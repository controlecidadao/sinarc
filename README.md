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

O **SINARC – Sistema Integrado de Análise de Redes Complexas** é um programa experimental de análise de dados desenvolvido sob os princípios da [Ciência Aberta](https://www.unesco.org/en/open-science) (metodologia aberta, código aberto, dados abertos, acesso aberto, revisão por pares aberta e recursos educacionais abertos), sob [Licença MIT](https://opensource.org/licenses/MIT), para uso em computadores Windows. O sistema foi criado a partir do inspirador projeto [Rede CNPJ](https://github.com/rictom/rede-cnpj), porém utilizando técnicas e ferramentas de programação distintas, o que lhe confere funcionalidades singulares.

O SINARC se propõe a ampliar as perspectivas de análise das conexões existentes entre pessoas físicas, pessoas jurídicas, endereços, telefones e e-mails constantes na [base de dados pública de CNPJ da Receita Federal](https://dados.gov.br/dados/conjuntos-dados/cadastro-nacional-da-pessoa-juridica---cnpj), formada por 60 milhões de empresas, por meio da criação de uma interface gráfica concebida a partir dos princípios da percepção visual extraídos da Psicologia da Gestalt, facilitando a identificação visual das estruturas pelo analista, e de um conjunto de ferramentas computacionais que se utilizam da teoria dos grafos para analisar a rede de conexões sob o ponto de vista de um sistema complexo e aplicar algoritmos matemáticos para auxiliar na identificação de informações e padrões ocultos relevantes para a produção de conhecimento.

[Nota Técnica RFB/COCAD nº 86, de 4 de julho de 2024](https://www.gov.br/receitafederal/dados/nota-cocad-rfb-86-2024.pdf/), especificando quais dados do CNPJ não estão protegidos por sigilo fiscal.

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

Uso do SINARC em trabalho técnico desenvolvido pelo Ministério Público de Contas do Estado do Espírito Santo (MPC-ES): [Parecer do MPC no Processo 784/2020](https://www.mpc.es.gov.br/wp-content/uploads/2024/10/Processo-784-2020-Parecer-MPC-ES-em-Denuncia-transacao-tributaria-Anchieta-e-Samarco.pdf#page=110). Vide [notícia](https://www.mpc.es.gov.br/2024/11/lagoa-de-mae-ba-mpc-es-aponta-danos-ambientais-irreversiveis-e-pede-inclusao-da-samarco-vale-e-bhp-em-denuncia/) sobre esta ação de controle do MPC-ES.

Assim como o projeto Rede CNPJ, o **objetivo do SINARC** é demonstrar a possibilidade de criação de ferramentas tecnológicas para exploração de dados abertos e incentivar o desenvolvimento de projetos semelhantes pela sociedade, considerando que **"_o verdadeiro progresso é o que põe a tecnologia ao alcance de todos!_"** (Henry Ford), sem exceção.

Para instalar o SINARC e o Rede CNPJ, siga as instruções contidas no arquivo [INSTRUÇÕES.txt](https://github.com/controlecidadao/sinarc/blob/main/INSTRU%C3%87%C3%95ES.txt), disponível na página principal deste repositório. Devido à sua portabilidade, o sistema pode ser instalado e executado diretamente em um HD externo e copiado para diversos computadores.

Conquanto o SINARC utilize apenas a modelagem de banco de dados do projeto Rede CNPJ, optou-se por disponibilizar a íntegra deste programa juntamente com o SINARC, permitindo ao cidadão explorar as duas ferramentas e, quem sabe, desenvolver seu próprio sistema de análise de grafos.

O manual de instruções do SINARC pode ser acessado por meio da tecla h (de _help_), durante o uso do sistema.

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

O SINARC se destina a todos que exercem o controle social e institucional da Administração Pública, como auditores, jornalistas, Comissões Permanentes de Licitação e de Pregão, Procuradorias Jurídicas, Sistemas de Controle Interno, Ministérios Públicos, entre outros órgãos e instituições, além do cidadão interessado em obter informações sobre a estrutura empresarial de grupos econômicos, a situação jurídica de empresas e as relações existentes entre pessoas físicas e jurídicas cadastradas na base de dados pública de CNPJ da Receita Federal.

**ATENÇÃO:** Antes de utilizar as informações obtidas por meio do SINARC, valide-as mediante consulta direta aos portais de transparência e às bases de dados primárias atualizadas.

<br><br>

## Exemplos de utilização do SINARC

<br>

Confira-se, a seguir, exemplos de exploração de redes extremamente complexas com o SINARC:

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




<!--## 🚧 Página em Construção...-->




