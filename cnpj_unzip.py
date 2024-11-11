# Importa módulos nativos
import zipfile
import time
import traceback
from pathlib import Path

# Cria constantes com nomes das pastas
INPUT_FOLDER = Path('dados-publicos-zip')
OUTPUT_FOLDER = Path('dados-publicos')

def extract_zips(input_folder, output_folder):

    """
    Extrai todos os arquivos ZIP do diretório de entrada e os descompacta no diretório de saída, sobrescrevendo os arquivos existentes.

    Parâmetros:
    input_folder (pathlib.Path): caminho para o diretório contendo os arquivos ZIP
    output_folder (pathlib.Path): caminho para o diretório de saída

    Cria o diretório de saída, caso ele não exista.
    """
    
    output_folder.mkdir(exist_ok=True)
    
    for n, zip_file in enumerate(input_folder.glob('*.zip')):
        with zipfile.ZipFile(zip_file) as z:
            z.extractall(output_folder)
        print(f'{zip_file.name}')
        
        # Para teste apenas
        # if n == 0:
        #     break


if __name__ == '__main__':

    try:
        start = time.time()
        print('Iniciando extração...')
        extract_zips(INPUT_FOLDER, OUTPUT_FOLDER)
        print('Extração finalizada com sucesso!')
        print('Tempo total de execução:', round(((time.time() - start) / 60), 1), 'min.')
    except:
        traceback.print_exc()
        input('Aperte qualquer tecla para sair...')
    
    
    
