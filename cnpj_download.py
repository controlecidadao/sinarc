# Importa módulos nativos
import re
import os
import datetime
import time
import glob
import traceback

# Importa módulos instalados
import requests
from bs4 import BeautifulSoup 
import wget


# Desabilita verificação de SSL para permitir acesso ao site com certificado auto-assinado
#requests.packages.urllib3.disable_warnings()


# URL da página de downloads da Receita Federal
# BASE_URL = 'http://200.152.38.155/CNPJ/'
BASE_URL = 'https://arquivos.receitafederal.gov.br/dados/cnpj/dados_abertos_cnpj/2024-10/'

# Pasta onde serão armazenados os arquivos ZIP
ZIP_FOLDER = 'dados-publicos-zip'
#ZIP_FOLDER = '../bases'


def create_zip_folder():
    """
    Cria pasta 'dados-publicos-zip' no diretório local, caso não exista.
    """
    
    # Verifica se a pasta ZIP_FOLDER existe. Se não existir, cria a pasta
    if not os.path.exists(ZIP_FOLDER):

        print(f'\nCriando pasta {ZIP_FOLDER}...')

        # Cria pasta
        os.makedirs(ZIP_FOLDER)


def get_soup(url):
    """
    Faz request HTTP para a URL e retorna objeto BeautifulSoup     
    Parâmetros:
        url (str): URL a ser requisitada
    Retorno:
        objeto BeautifulSoup com conteúdo HTML da URL
    """

    # Gera objeto 'response'
    response = requests.get(url, verify=False)

    # Retorna texto da URL
    return BeautifulSoup(response.text, 'html.parser')


def get_latest_date(soup):
    """
    Encontra a data mais recente entre as existentes no conteúdo HTML 
    Parâmetros:
        soup (BeautifulSoup): objeto BeautifulSoup
    Retorno:
        str: data mais recente no formato AAAA-MM-DD
    """

    # Gera lista de datas localizadas no texto da página HTML
    data = re.findall(r'\d{4}-\d{2}-\d{2}', soup.text)

    # Retorna data mais recente (string)
    return max(datetime.datetime.strptime(d, '%Y-%m-%d') for d in data)#.strftime('%Y-%m-%d')
  

def read_date_file():

    # if not os.path.exists(f'{ZIP_FOLDER}/data_ultima_atualizacao.txt'):
    #     return False
    # else:

    with open(f'{ZIP_FOLDER}/data_ultima_atualizacao.txt', 'r') as f:

        date = f.readline()

        saved_date = datetime.datetime.strptime(date, "%Y-%m-%d")

        #print('Data da base de dados em uso: ', saved_date)

        return saved_date
    

def update_date_file(latest_date):
    """
    Salva a data mais recente em um arquivo TXT
    Parâmetros:
        latest_date (str): data no formato AAAA-MM-DD
    Retorno:
        None
    """

    # Cria arquivo TXT ou recria, caso já exista
    with open(f'{ZIP_FOLDER}/data_ultima_atualizacao.txt', 'w') as f:

        # Inclui data mais recente no arquivo
        f.write(latest_date.strftime('%Y-%m-%d'))
      

def get_zip_links(soup):
    """
    Extrai URLs para download dos arquivos ZIP
    Parâmetros:
        soup (BeautifulSoup): objeto com conteúdo HTML
    Retorno:
        List[str]: lista de URLs 
    """

    # Cria lista para armazenar URLs dos arquivos ZIP
    links = []

    # Realiza loop sobre todos os elementos 'a' presentes no arquivo HTML
    for link in soup.find_all('a'):

        # Verifica se o atributo 'href' do elemento 'a' termina com '.zip'
        if link['href'].endswith('.zip'):

            # Gera URL completa
            url = f'{BASE_URL}{link["href"]}' if not link['href'].startswith('http') else link['href']

            # Adiciona URL completa à lista 'links'
            links.append(url)

    # Retorna lista de URLs
    return links


def download_with_progress(urls):
    """
    Realiza download sequencial dos arquivos das URLs, exibindo barra de progresso
    Parâmetros:
        urls (List[str]): lista de URLs para download
    Retorno:
        None
    """

    # Realiza loop sobre lista de URLs
    for i, url in enumerate(urls):

        # Extrai nome do arquivo da URL
        file_name = url.split('/')[-1]

        # Verifica se o arquivo da URL já existe na pasta ZIP_FOLDER
        if not os.path.exists(f'.\{ZIP_FOLDER}\{file_name}'):

            print(f'Downloading file {i + 1} of {len(urls)}')

            # Realiza download do arquivo da URL e salva em 'ZIP_FOLDER'. Exibe barra de progresso.
            file_name = wget.download(url, out=ZIP_FOLDER, bar=wget.bar_thermometer)
            
            print(f'{file_name} downloaded successfully!\n')

        # Se já existir, não realiza download e passa para a próxima URL
        else:
            print(f'{i + 1} {file_name} - já existe na pasta.')


def main():

    # Cria pasta 'dados-publicos-zip', caso não exista
    create_zip_folder()

    # Cria objeto 'soup' da URL da página da Receita Federal
    soup = get_soup(BASE_URL)

    # Extrai data mais recente da página da Receita Federal
    latest_date = get_latest_date(soup)
    print(f'Data da base de dados no site: {latest_date}')

    # Verifica se o arquivo TXT existe
    if os.path.exists(f'{ZIP_FOLDER}/data_ultima_atualizacao.txt'):
        
        # Extrai data armazenada no arquivo TXT, caso o arquivo exista
        saved_date = read_date_file()
        print(f'Data da base de dados em uso:  {saved_date}')

        # Verifica se a base de dados disponibilizada é mais recente
        if latest_date == saved_date:
            print('Base de dados atualizada.')
            return
        else:
            print('+================================+')
            print('| NOVA BASE DE DADOS DISPONÍVEL! |')
            print('+================================+')
            
            pergunta = input('Deseja atualizar os arquivos ZIP (Enter para NÃO ou qualquer outra tecla para SIM)? ')
            
            if pergunta == '':
                return
            
            else:
                # Deleta todos os arquivos da pasta ZIP_FOLDER
                # Para segurança do processo de deleção de arquivos, foi colocado o nome da pasta 'dados-publicos-zip'
                for g in glob.glob(fr'dados-publicos-zip\*.*'):
                    os.remove(g)
                pass

    
    # Cria lista com URLs dos arquivos ZIP
    zip_urls = get_zip_links(soup)
    print(f'{len(zip_urls)} arquivos encontrados')
    
    # Realiza download sequencial dos arquivos ZIP
    print('Iniciando downloads...')
    download_with_progress(zip_urls)

    # Atualiza arquivo TXT com a data mais recente
    update_date_file(latest_date)


if __name__ == '__main__':

    try:
        start = time.time()
        main()
        print('Tempo total de execução:', round(((time.time() - start) / 60), 1), 'min.')
    except:
        traceback.print_exc()
        input('Aperte qualquer tecla para sair...')
