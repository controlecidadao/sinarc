![v](https://img.shields.io/badge/Version-0.1.0-blue)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
![v](https://img.shields.io/badge/Updated-November%2014,%20%202024-green)
![Visualizações](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fcontrolecidadao%2Fsinarc&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=Views&edge_flat=false)

<p align="center" width="100%">
<img width="100%" src="https://github.com/controlecidadao/sinarc/blob/main/sinarc.png" />
</p>

<br>

## O que é o SINARC?

<br>

O **SINARC – Sistema Integrado de Análise de Redes Complexas** é um programa experimental de análise de dados de fontes abertas desenvolvido sob os princípios da [Ciência Aberta](https://www.unesco.org/en/open-science) (metodologia aberta, código aberto, dados abertos, acesso aberto, revisão por pares aberta e recursos educacionais abertos), sob [Licença MIT](https://opensource.org/licenses/MIT), para uso em computadores Windows. O sistema foi criado a partir do inspirador projeto [Rede CNPJ](https://github.com/rictom/rede-cnpj), porém utilizando técnicas e ferramentas de programação distintas, o que lhe confere funcionalidades singulares.

Como sistema de inteligência para fontes abertas (_Open Source Intelligence - [OSINT](https://www.cia.gov/stories/story/ic-osint-strategy-rollout/))_, o SINARC se propõe a ampliar as perspectivas de análise das conexões existentes entre pessoas físicas, pessoas jurídicas, endereços, telefones e e-mails constantes na [base de dados](https://dados.gov.br/dados/conjuntos-dados/cadastro-nacional-da-pessoa-juridica---cnpj) pública de CNPJ da Receita Federal, formada por 60 milhões de empresas, por meio da criação de uma interface gráfica concebida a partir dos princípios da percepção visual extraídos da Psicologia da [Gestalt](https://medium.com/aela/os-7-princ%C3%ADpios-de-gestalt-e-como-utiliz%C3%A1-los-em-projetos-de-ui-design-46d6d832abf6), facilitando a identificação visual das estruturas pelo analista, e de um conjunto de ferramentas computacionais que utilizam a teoria dos grafos para analisar a rede de conexões sob o ponto de vista de um sistema complexo e aplicar algoritmos matemáticos para auxiliar na identificação de informações e padrões ocultos relevantes para a produção de conhecimento.

[Nota Técnica](https://www.gov.br/receitafederal/dados/nota-cocad-rfb-86-2024.pdf/) da Receita Federal especifica quais dados do CNPJ não estão protegidos por sigilo fiscal.

O vídeo a seguir demonstra a aplicação do SINARC no controle da Administração Pública. A partir de [notícia](https://www.radiocacula.com.br/detran-ms-e-investigado-por-suspeita-de-fraude-em-licitacao-de-r-39-milhoes/) publicada na internet sobre supostas irregularidades em licitação para contratação de serviço de sinalização semafórica, o sistema analisa a existência de vínculos entre as empresas citadas na notícia, cruzando os resultados com os participantes de outra licitação de mesmo objeto para verificar a existência de conexões entre os grupos econômicos:

<br>

<p align="center" width="100%">
<a href="https://www.youtube.com/watch?v=R73ixbeP0II" target="_blank">
   <img width="70%" class="clickable-image" src="https://github.com/controlecidadao/sinarc/blob/main/images/noticias_na_intenet.png" alt="Vídeo Demonstrativo" />
</a>
</p>

<p align="center" width="100%">
<a href="https://www.youtube.com/watch?v=R73ixbeP0II" target="_blank">
   Vídeo Demonstrativo do SINARC
</a>
</p>

<br><br>

<p align="center" width="100%">
<img width="80%" src="https://github.com/controlecidadao/sinarc/blob/main/images/vinculos_1.png" />
</p>

<p align="center" width="100%">
Exemplo de vínculos existentes entre duas empresas, identificados pelo SINARC na 1ª camada
</p>

<br>

Confira exemplo de uso do SINARC em trabalho técnico desenvolvido pelo Ministério Público de Contas do Estado do Espírito Santo (MPC-ES): [Parecer](https://www.mpc.es.gov.br/wp-content/uploads/2024/10/Processo-784-2020-Parecer-MPC-ES-em-Denuncia-transacao-tributaria-Anchieta-e-Samarco.pdf#page=110) no Processo TC 784/2020 (pág. 110). Para saber mais sobre esta ação de controle do MPC-ES em defesa do meio ambiente, vide [notícia](https://www.mpc.es.gov.br/2024/11/lagoa-de-mae-ba-mpc-es-aponta-danos-ambientais-irreversiveis-e-pede-inclusao-da-samarco-vale-e-bhp-em-denuncia/).

Assim como o projeto Rede CNPJ, o **objetivo do SINARC** é demonstrar a possibilidade de criação de ferramentas tecnológicas para exploração de dados abertos e incentivar o desenvolvimento de projetos semelhantes pela sociedade, considerando que **"_o verdadeiro progresso é o que põe a tecnologia ao alcance de todos!_"** (Henry Ford), sem exceção.

Para instalar o SINARC e o Rede CNPJ, siga as instruções contidas no arquivo [INSTRUÇÕES.txt](https://github.com/controlecidadao/sinarc/blob/main/INSTRU%C3%87%C3%95ES.txt), disponível na página principal deste repositório. Devido à sua portabilidade, é possível instalar e executar o sistema diretamente em um HD externo.

Para ampliar a capacidade de pesquisa por CNPJ, baixe e descompacte na pasta SINARC a versão portátil e gratuita do programa [DB Browser](https://sqlitebrowser.org/dl/) (arquivo "DB Browser for SQLite - .zip (no installer)"). Com o auxílio do DB Browser é possível realizar consultas diretamente nos bancos de dados de CNPJ combinando critérios de busca que não estão disponíveis no SINARC e no Rede CNPJ.

<!--Devido à sua portabilidade, o sistema pode, inclusive, ser instalado diretamente em um HD externo (processo muito demorado) e depois copiado para outros computadores. O inverso também pode ser feito: instalar o sistema no computador e depois copiar sua pasta para um HD externo.-->

Conquanto o SINARC utilize apenas a modelagem de banco de dados do projeto Rede CNPJ, optou-se por disponibilizar a íntegra deste programa juntamente com o SINARC, permitindo ao cidadão explorar as duas ferramentas e, quem sabe, desenvolver seu próprio sistema de análise de grafos, com funcionalidades, certamente, ainda mais interessantes, disponibilizando-o também como software livre para inspirar outras pessoas a se engajarem em iniciativas que promovam a transparência e a cidadania a partir de dados abertos.

O manual de instruções do SINARC pode ser acessado por meio da tecla h (de _help_), durante o uso do sistema. Já o do Rede CNPJ encontra-se disponível na própria página do projeto.

<br>

<p align="center" width="100%">
<img width="100%" src="https://github.com/controlecidadao/sinarc/blob/main/print_screen.png" />
</p>

<p align="center" width="100%">
Exemplo de rede complexa de CNPJ sendo explorada pelo SINARC
</p>

<br><br>

## A quem se destina o SINARC?

<br>

O SINARC se destina a todos que exercem o controle social e institucional da Administração Pública, como auditores, jornalistas, comissões permanentes de licitação e de pregão, procuradorias jurídicas, sistemas de controle interno, ministérios públicos, entre outros órgãos e instituições, além do cidadão interessado em obter informações sobre a estrutura empresarial de grupos econômicos, a situação jurídica de empresas e as relações existentes entre pessoas físicas e jurídicas cadastradas na base de dados pública de CNPJ da Receita Federal.

**ATENÇÃO:** Antes de utilizar as informações obtidas por meio do SINARC, valide-as mediante consulta direta aos portais de transparência e às bases de dados primárias atualizadas.

<br><br>

## Exemplos de utilização do SINARC

<br>

Confira, a seguir, exemplos de exploração de redes complexas com o SINARC:

<br><br>

### **CNPJ 33.592.510/0001-54 (Vale S.A.):**<br>
*	Aberto em 4 camadas com o SINARC<br>
*	6.602 nós<br>
*	12.884 arestas (azul)<br>
<br>

<p align="center" width="100%">
<img width="100%" src="https://github.com/controlecidadao/sinarc/blob/main/images/vale_sa_1.png" />
</p>

<p align="center" width="100%">
Visão panorâmica da rede complexa gerada pelo SINARC
</p>

<br><br>

<p align="center" width="100%">
<img width="100%" src="https://github.com/controlecidadao/sinarc/blob/main/images/vale_sa_2.png" />
</p>

<p align="center" width="100%">
Aproximação da rede complexa gerada pelo SINARC
</p>

<br><br>

<p align="center" width="100%">
<img width="100%" src="https://github.com/controlecidadao/sinarc/blob/main/images/vale_sa_3.png" />
</p>

<p align="center" width="100%">
Detalhe da rede complexa gerado pelo SINARC
</p>

<br><br>

### **CNPJ de empresas listadas na B3 S.A. (Bolsa de Valores):**<br>
*	Abertos em 9 camadas com o SINARC<br>
*	31.606 nós<br>
*	45.268 arestas (azul)<br>
<br>

<p align="center" width="100%">
<img width="100%" src="https://github.com/controlecidadao/sinarc/blob/main/images/b3_1.png" />
</p>

<p align="center" width="100%">
Visão panorâmica da rede complexa gerada pelo SINARC
</p>

<br><br>

<p align="center" width="100%">
<img width="100%" src="https://github.com/controlecidadao/sinarc/blob/main/images/b3_2.png" />
</p>

<p align="center" width="100%">
Aproximação da rede complexa gerada pelo SINARC
</p>

<br><br>

<p align="center" width="100%">
<img width="100%" src="https://github.com/controlecidadao/sinarc/blob/main/images/b3_3.png" />
</p>

<p align="center" width="100%">
Detalhe da rede complexa gerado pelo SINARC (com ocultação de arestas)
</p>

<br><br>

<p align="center" width="100%">
<img width="100%" src="https://github.com/controlecidadao/sinarc/blob/main/images/b3_4.png" />
</p>

<p align="center" width="100%">
Vínculo existente entre duas empresas, identificado pelo SINARC na 14ª camada
</p>

<br><br>

## Algumas possibilidades de uso do SINARC

<br>

✅ Identificar vínculos entre pessoas físicas e jurídicas citadas em notícias publicadas na internet.

✅ Conhecer a estrutura de grupo empresarial a partir do CNPJ, razão social, nome de fantasia, nome do sócio, documento fiscal etc.

✅ Gerar grafo contendo todas as empresas cujos números de CNPJ encontram-se citados em relatório técnico, diário oficial ou qualquer outro documento ou tela de programa com texto selecionável.

✅ Identificar vínculos entre licitantes a partir da ata do procedimento licitatório realizado pela Administração Pública ou da base de dados de licitantes disponibilizada no portal da transparência.

✅ Identificar pessoas físicas e jurídicas com posições estratégicas na rede a partir da aplicação de algoritmos de medidas de centralidade de grafos: Centralidade de Grau (_Degree Centrality_), Centralidade de Intermediação (_Betweenness Centrality_), Centralidade de Proximidade (_Closeness Centrality_), Centralidade de Autovetor (_Eigenvector Centrality_) e Ranking de Página (_Pagerank_).

✅ Identificar toda a cadeia hierárquica de pessoas físicas e jurídicas que integram o grupo econômico e controlam determinada empresa.

✅ Gerar grafo contendo todas as empresas que se enquadrem na combinação de determinados critérios (mesmo endereço, mesma rua, mesmo CEP, mesma atividade econômica etc.), mediante consulta prévia à base de dados usando o programa gratuito [DB Browser](https://sqlitebrowser.org/).

<br><br>
<!--## 🚧 Página em Construção...-->




