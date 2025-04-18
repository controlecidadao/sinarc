![v](https://img.shields.io/badge/Versão-0.1.1-blue)
[![License: MIT](https://img.shields.io/badge/Licença-MIT-green.svg)](https://opensource.org/licenses/MIT)
![v](https://img.shields.io/badge/Atualização-%2009%20de%20Abril%20de%20%202025-green)

<!--![](https://komarev.com/ghpvc/?username=controlecidadao&abbreviated=true&label=Views)-->
<!-- Fonte: https://github.com/antonkomarev/github-profile-views-counter-->

<p align="center" width="100%">
<!--<img width="100%" src="https://github.com/controlecidadao/sinarc/blob/main/sinarc.png" />-->
<img width="80%" src="./images/sinarc.png" />
</p> 

<br><br>

## O que é o SINARC?

<br>

O **SINARC – Sistema Integrado de Análise de Redes Complexas** é um programa experimental de análise de dados de fontes abertas desenvolvido pelo Ministério Público de Contas do Estado do Espírito Santo ([MPC-ES](https://www.mpc.es.gov.br/)) sob os princípios da [Ciência Aberta](https://www.unesco.org/en/open-science) (metodologia aberta, código aberto, dados abertos, acesso aberto, revisão por pares aberta e recursos educacionais abertos), sob [Licença MIT](https://opensource.org/licenses/MIT) (software livre e gratuito), para uso em computadores com sistema operacional Windows. O sistema foi criado a partir do inspirador projeto [Rede CNPJ](https://github.com/rictom/rede-cnpj), porém utilizando técnicas e ferramentas de programação distintas, o que lhe confere funcionalidades únicas e complementares ao Rede CNPJ.

Como sistema de inteligência para fontes abertas (_Open Source Intelligence - [OSINT](https://www.cia.gov/stories/story/ic-osint-strategy-rollout/))_, o SINARC se propõe a ampliar as perspectivas de análise das conexões existentes entre pessoas físicas, pessoas jurídicas, endereços, telefones e e-mails constantes na [base de dados](https://dados.gov.br/dados/conjuntos-dados/cadastro-nacional-da-pessoa-juridica---cnpj) pública de CNPJ da Receita Federal, formada por 60 milhões de empresas, por meio da criação de uma interface gráfica concebida a partir dos princípios da percepção visual extraídos da Psicologia da [Gestalt](https://medium.com/aela/os-7-princ%C3%ADpios-de-gestalt-e-como-utiliz%C3%A1-los-em-projetos-de-ui-design-46d6d832abf6), facilitando a identificação visual das estruturas pelo analista, e de um conjunto de ferramentas computacionais que utilizam a [Teoria dos Grafos](https://pt.wikipedia.org/wiki/Teoria_dos_grafos) para analisar a rede de conexões sob a perspectiva de um [Sistema Complexo](https://pt.wikipedia.org/wiki/Sistemas_complexos) e aplicar algoritmos matemáticos para auxiliar na identificação de informações e padrões ocultos relevantes para a produção de conhecimento.

Assim como o projeto Rede CNPJ, o **objetivo do SINARC** é demonstrar a possibilidade de criação de ferramentas tecnológicas para exploração de dados abertos e incentivar o desenvolvimento de projetos semelhantes pela sociedade, considerando que **"_o verdadeiro progresso é o que põe a tecnologia ao alcance de todos!_"** (Henry Ford), sem exceção.

[Nota Técnica](https://www.gov.br/receitafederal/dados/nota-cocad-rfb-86-2024.pdf/) da Receita Federal especifica quais informações da base de dados de CNPJ não estão protegidas por sigilo fiscal, em consonância com o [Decreto 8.777/2016](https://www.planalto.gov.br/ccivil_03/_ato2015-2018/2016/decreto/d8777.htm#), que instituiu a Política de Dados Abertos do Poder Executivo federal.

Para acessar a fonte primária dos dados usados pelo SINARC, clique [aqui](https://arquivos.receitafederal.gov.br/dados/cnpj/dados_abertos_cnpj/). 
Conheça também o [Dicionário de Dados](https://www.gov.br/receitafederal/dados/cnpj-metadados.pdf) de CNPJ da Receita Federal.

Todas as informações produzidas com o SINARC são de domínio público. Os exemplos apresentados foram selecionados com base na singularidade de seus padrões de conexão, possuindo caráter meramente ilustrativo e servindo tão somente como referência no contexto educacional da produção de conhecimento a partir de fontes abertas. Links para sites externos foram incluídos apenas para ilustrar a possibilidade de ampliação das funcionalidades da ferramenta.

<br><br>

## Como usar o SINARC?

<br>

O vídeo a seguir demonstra a aplicação do SINARC no controle da Administração Pública. A partir de [notícia](https://www.radiocacula.com.br/detran-ms-e-investigado-por-suspeita-de-fraude-em-licitacao-de-r-39-milhoes/) publicada na internet sobre supostas irregularidades em licitação promovida pelo Estado do Mato Grosso do Sul (MS) para contratação de serviço de sinalização semafórica, o sistema analisa a existência de vínculos entre as empresas citadas na notícia, cruzando os resultados com os participantes de outra licitação de mesmo objeto, realizada pelo Município de Vila Velha (ES), para verificar a existência de conexões entre os grupos econômicos:

<br>

<p align="center" width="100%">
<a href="https://www.youtube.com/watch?v=R73ixbeP0II" target="_blank">
   <!--<img width="70%" class="clickable-image" src="https://github.com/controlecidadao/sinarc/blob/main/images/noticias_na_intenet.png" alt="Vídeo Demonstrativo" />-->
   <img width="70%" class="clickable-image" src="./images/noticias_na_intenet.png" alt="Vídeo Demonstrativo" />
</a>
</p>

<p align="center" width="100%">
<a href="https://www.youtube.com/watch?v=R73ixbeP0II" target="_blank">
   Vídeo Demonstrativo do SINARC
</a>
</p>

<br>

Confira-se exemplo de uso do SINARC em trabalho técnico desenvolvido pelo Ministério Público de Contas do Estado do Espírito Santo (MPC-ES): [Parecer](https://www.mpc.es.gov.br/wp-content/uploads/2024/10/Processo-784-2020-Parecer-MPC-ES-em-Denuncia-transacao-tributaria-Anchieta-e-Samarco.pdf#page=110) emitido no Processo TC 784/2020 (pág. 110). Para saber mais sobre esta ação de controle do MPC-ES em defesa do meio ambiente, vide a respectiva [notícia](https://www.mpc.es.gov.br/2024/11/lagoa-de-mae-ba-mpc-es-aponta-danos-ambientais-irreversiveis-e-pede-inclusao-da-samarco-vale-e-bhp-em-denuncia/).

Para permitir o compartilhamento, os grafos interativos gerados pelo SINARC são salvos no _arquivo_sinarc.zip_, preservando todas as funcionalidades que não dependem de consulta em tempo real ao banco de dados.

<br><br>

<p align="center" width="100%">
<img width="80%" src="./images/vinculos_1.png" />
</p>

<p align="center" width="100%">
<a href="https://controlecidadao.github.io/sinarc/exemplo1.html">Exemplo 1</a>: Grafo interativo exibindo vínculos entre duas empresas, identificados pelo SINARC na 1ª camada
</p> 

<br>
<br>

<p align="center" width="100%">
<img width="100%" src="./images/chocolates_garoto.png" />
</p>

<p align="center" width="100%">
<a href="https://controlecidadao.github.io/sinarc/exemplo2.html">Exemplo 2</a>: Grafo interativo de grupo econômico aberto em 3 camadas, com 223 nós e 632 arestas
</p>

<br>
<br>

<p align="center" width="100%">
<img width="50%" src="./images/exemplo3.png" />
</p>

<p align="center" width="100%">
<a href="https://controlecidadao.github.io/sinarc/exemplo3.html">Exemplo 3</a>: Grafo interativo de grupo econômico aberto em 4 camadas, exibindo 45 nós em layout circular
</p>

<br>
<br>

<p align="center" width="100%">
<a href="https://www.youtube.com/watch?v=aP3bkhZEUgY" target="_blank">
   <img width="100%" class="clickable-image" src="./images/imagem_6.png" alt="Vídeo Demonstrativo" />
</a>
</p>

<p align="center" width="100%">
<a href="https://www.youtube.com/watch?v=aP3bkhZEUgY" target="_blank">Vídeo</a>: Identificando cadeia hierárquica de comando com o SINARC
</p>

<br><br>

## SINARC playground

<br>

Para testar algumas das funcionalidades dos grafos interativos gerados pelo SINARC:
1) Abra o link a seguir ([Exemplo 5](https://controlecidadao.github.io/sinarc/exemplo5.html)) em uma nova aba do navegador e aguarde o grafo ser exibido. Outros exemplos de grafos disponíveis online para testes: [Exemplo 1](https://controlecidadao.github.io/sinarc/exemplo1.html), [Exemplo 2](https://controlecidadao.github.io/sinarc/exemplo2.html), [Exemplo 3](https://controlecidadao.github.io/sinarc/exemplo3.html), [Exemplo 4](https://controlecidadao.github.io/sinarc/exemplo4.html). Obs: Caso algum comando não funcione corretamente com os exemplos online, tente abrir o endereço do grafo usando uma aba anônima do navegador;
2) Clique na janela do grafo para ativá-la e pressione a **tecla Espaço** 16 vezes, espaçadamente, até que o parâmetro "tamanho", exibido no canto superior direito da tela, reduza de 100 para 25 em intervalos de 5 unidades. Esta função aumenta a massa dos nós proporcionalmente ao seu tamanho (do maior para o menor), melhorando progressivamente a visualização do grafo no layout gravitacional;
3) Pressione a **tecla Escape** para ajustar o grafo à janela de visualização;
4) Pressione a **tecla z** (minúscula) para ativar/desativar o modo automático de visualização. Este recurso simula os movimentos de uma câmera percorrendo os nós do grafo em ordem decrescente de grau (tamanho), seguido pela aproximação de cada um de seus nós adjacentes;
5) Após desativar o modo automático de visualização (pressione a **tecla z** novamente), use o **botão de rolagem do mouse** para aproximar e afastar o grafo. Posicione o mouse sobre o ponto que deseja aproximar ou afastar e gire o botão de rolagem para frente e para trás;
6) **Posicione o ponteiro do mouse por 1,5s sobre qualquer nó** para exibir seus detalhes na tela;
7) Clique sobre um nó de pessoa jurídica (ícone de prédio ou de globo) para selecioná-lo e pressione a **tecla d** (minúscula) para abrir uma janela com detalhes sobre a empresa (site externo);
8) Para recarregar a página e retornar o grafo ao seu estado inicial, pressione **tecla F5**.
9) Para a relação completa de comandos e funcionalidades, consulte o item 8, [Uso do Mouse e do Teclado](https://controlecidadao.github.io/sinarc/help.html#uso_do_mouse) do [Manual do SINARC](https://controlecidadao.github.io/sinarc/help.html). Para abrir o manual estando na janela do grafo, pressione a **tecla h** (minúscula).

<br><br>

<p align="center" width="100%">
<a href="https://www.youtube.com/watch?v=spIwxVx6AnI" target="_blank">
   <!--<img width="70%" class="clickable-image" src="https://github.com/controlecidadao/sinarc/blob/main/images/visualizacao.png" alt="Modo Automático de Visualização" />-->
   <img width="70%" class="clickable-image" src="./images/visualizacao.png" alt="Modo Automático de Visualização" />
</a>
</p>

<p align="center" width="100%">
<a href="https://www.youtube.com/watch?v=spIwxVx6AnI" target="_blank">Vídeo 1</a>: Modo Automático de Visualização do SINARC
</p>

<br><br>

<p align="center" width="100%">
<a href="https://www.youtube.com/watch?v=7kFEYaev6Lg" target="_blank">
   <!--<img width="70%" class="clickable-image" src="https://github.com/controlecidadao/sinarc/blob/main/images/visualizacao.png" alt="Modo Automático de Visualização" />-->
   <img width="70%" class="clickable-image" src="./images/visualizacao_2.png" alt="Modo Automático de Visualização" />
</a>
</p>

<p align="center" width="100%">
<a href="https://www.youtube.com/watch?v=7kFEYaev6Lg" target="_blank">Vídeo 2</a>: Modo Automático de Visualização do SINARC
</p>

<br><br>
## Tutorial interativo

<details>
   
<summary>Sequência demonstrativa de comandos do SINARC (clique para expandir)</summary>

<br>

### 🚧 Tutorial em Construção 🚧

<br>

O objetivo deste tutorial é demonstrar, de forma prática, o uso dos comandos do SINARC que não dependem de consulta em tempo real ao banco de dados, utilizando grafos disponíveis online. O SINARC possui aproximadamente **80 comandos** acionados pelo mouse e pelo teclado.

Certifique-se de que o teclado esteja no padrão de letras minúsculas (tecla CapsLock desativada). Para executar comandos com letras maiúsculas, pressione Shift + tecla desejada.<br>

Os comandos listados a seguir estão agrupados em blocos de acordo com suas funcionalidades. Execute-os na sequência indicada.<br>

A descrição dos comandos executados com o mouse e com o teclado é exibida no canto superior direito da tela durante 3s.

<br><br>

### Primeira sequência de comandos:

Abra o link a seguir ([Exemplo 4](https://controlecidadao.github.io/sinarc/exemplo4.html)) em uma nova aba do navegador e aguarde o grafo ser exibido. Caso disponha de um segundo monitor, mova para ele a nova aba e pressione a **tecla b** para ajustar a altura da janela de visualização do grafo à altura da tela do monitor.

<br>

#### Ajuste de Tela

---

1) **Tecla Escape** --> Enquadra o grafo no centro da tela;
2) **Tecla F11** --> Ativa/desativa a exibição do grafo em tela cheia;
3) **Tecla F5** --> Recarrega a página, exibindo o grafo em uma posição diferente da anterior (pressione algumas vezes);
4) **Tecla F11** --> Ativa/desativa a exibição do grafo em tela cheia;
5) **Tecla b** --> Ajusta a altura da janela de visualização do grafo à altura da janela do navegador;
6) **Tecla Escape** --> Enquadra o grafo no centro da tela;
   
<br>

#### Ajuste de Layout

---
   
7) **Tecla k** --> Alterna entre os layouts gravitacional (padrão), hieráquico a partir das folhas e hierárquico a partir das raízes (pressione 3 vezes). Para enquadrar o grafo no centro da tela, pressione a tecla Escape. Vide detalhes no canto superior direito da tela;
8) **Tecla K** --> Alterna entre os layouts circular e gravitacional (pressione 2 vezes). Vide detalhes no canto superior direito da tela;

<br>

#### Exibição de informações no grafo sobre nós e arestas

---

9) **Mouse** --> Passe o ponteiro do mouse sobre os nós para destacar em vermelho suas arestas adjacentes;
10) **Mouse** --> Permaneça com o ponteiro do mouse sobre um nó ou aresta por 1,5s para exibir suas informações;

<br>

#### Seleção de nós com o mouse

---

11) **Mouse** --> Clique com o mouse sobre um nó para selecioná-lo;
12) **Mouse** --> Clique com o mouse sobre o fundo branco para desselecionar o nó selecionado;
13) **Tecla Ctrl + Mouse** --> Mantenha a tecla Ctrl pressionada e clique sobre alguns nós para selecioná-los simultaneamente;
14) **Mouse** --> Clique com o mouse sobre o fundo branco para desselecionar todos os nós selecionados;
15) **Mouse** --> Posicione o ponteiro do mouse sobre um nó e gire o botão de rolagem para frente e para trás para afastar e aproximar o grafo;
16) **Tecla Escape** --> Enquadra o grafo no centro da tela;
17) **Mouse** --> Posicione o ponteiro do mouse sobre o fundo branco, mantenha pressionado o botão esquerdo e arraste o grafo para o lado. Solte o botão ao final do movimento;
18) **Tecla Escape** --> Enquadra o grafo no centro da tela;

<br>

#### Ajuste da exibição de nós e arestas

---

19) **Tecla e** --> Alterna entre os 7 tipos de visualização de cada nó (pressione 7 vezes). Vide detalhes no canto superior direito da tela;
20) **Tecla l (ele minúsculo)** --> Alterna entre os 3 tipos de visualização das arestas (pressione 3 vezes). Vide detalhes no canto superior direito da tela;
21) **Tecla Shift + Tecla Seta p/ Direita** --> Aumenta o tamanho das arestas em 30 unidades (pressione 10 vezes). Tamanho padrão das arestas: 300;
22) **Tecla Shift + Tecla Seta p/ Esquerda** --> Diminui o tamanho das arestas em 30 unidades (pressione 10 vezes);

<br><br>

### Segunda sequência de comandos:

Abra o link a seguir ([Exemplo 5](https://controlecidadao.github.io/sinarc/exemplo5.html)) em uma nova aba do navegador e aguarde o grafo ser exibido. Caso disponha de um segundo monitor, mova para ele a nova aba e pressione a **tecla b** para ajustar a altura da janela de visualização do grafo à altura da tela do monitor.<br>

<br>

#### Fixação de nós

---

1) **Mouse** --> Mantenha pressionado o botão esquerdo mouse sobre o nó de maior tamanho e arraste-o até um dos cantos da tela. Ao soltar o botão, observe o retorno do grafo ao centro da tela.
2) **Tecla p** --> Ativa/desativa os movimentos do grafo, permitindo o reposicionamento manual dos nós. Repita o comando anterior e pressione a tecla p durante o retorno do grafo ao centro da tela. Quando o grafo parar, clique sobre um nó e arraste-o para outra posição (repita esse procedimento com outros nós). Ao final, pressione a tecla p novamente para liberar os movimentos do grafo;
3) **Tecla f** --> Ativa/desativa os movimentos apenas dos nós selecionados. Selecione um nó, pressione a tecla f e arraste-o para fixá-lo em um canto da tela. Selecione outro nó, pressione a tecla f novamente e arraste-o para o outro canto da tela. Ao final, selecione os nós fixados e pressione a tecla f para liberá-los;
4) **Tecla F5** --> Recarrega a página, exibindo o grafo em uma posição diferente da anterior;

<br>

#### Ajuste da massa dos nós

---

5) **Tecla m** --> Aumenta a massa de todos os nós do grafo em 0,5 unidade, ampliando a força gravitacional de repulsão entre eles (pressione 10 vezes). Massa padrão dos nós: 1;
6) **Tecla M** --> Diminui a massa de todos os nós do grafo em 0,5 unidade, reduzindo a força gravitacional de repulsão entre eles (pressione 10 vezes);
7) **Tecla U** --> Exibe número de nós para cada faixa de tamanho (faixas 20 a 25, 25 a 29 ... 95 a 99, 100);
8) **Tecla n** --> Aumenta a massa dos nós com tamanho maior ou igual ao tamanho de referência (tamanho de referência padrão = 40) (pressione 5 vezes);
9) **Tecla N** --> Diminui a massa dos nós com tamanho maior ou igual ao tamanho de referência (tamanho de referência padrão = 40) (pressione 5 vezes);
10) **Tecla Shift + Tecla Seta p/ Cima** --> Aumenta valor do tamanho de referência em 5 unidades;
11) **Tecla Shift + Tecla Seta p/ Baixo** --> Diminui valor do tamanho de referência em 5 unidades;
12) **Tecla ]** --> Aumenta valor do tamanho dos nós selecionados em 5 unidades. Selecione um nó com apenas uma aresta e pressione a tecla ] 2 vezes;
13) **Tecla [** --> Diminui valor do tamanho dos nós selecionados em 5 unidades (pressione 2 vezes);
14) **Tecla Espaço** --> Aumenta a massa dos nós de forma proporcional ao seu tamanho, iniciando pelo maior (tamanho 100) e indo até o menor (tamanho 20) (pressione 16 vezes).

<br>

#### Seleção de nós com o teclado

---

15) **Tecla A** --> Seleciona todos os nós do grafo simultaneamente;
16) **Tecla ,** --> Abre janela contendo os rótulos de todos os nós selecionados, segregados por tipo de nó;
17) **Tecla a** --> Seleciona os nós adjacentes aos nós que se encontram selecionados. Selecione um nó com apenas uma aresta e pressione a tecla "a" até que todos os nós sejam desselecionados;
18) **Tecla c** --> Aproxima o nó selecionado e enquadra na tela seus nós adjacentes. Selecione um nó do grafo e pressione a tecla c por 2 vezes;
19) **Tecla i** --> Alterna entre os nós selecionados, aproximando de cada um deles. Selecione 3 nós no grafo (Ctrl + clique) e pressione a tecla i por 3 vezes;
20) **Tecla I (i maiúsculo)** --> Inverte seleção dos nós do grafo. Selecione alguns nós e aperte a tecla I;
21) **Tecla ç** --> Alterna seleção dos nós de Endereços (EN), Telefones (TE) e E-mails (EM) com apenas 1 conexão, seguida pelos nós com mais de 1 conexão (pressione 3 vezes);
22) **Tecla Ç** --> Alterna seleção dos nós com número crescente de conexões (1, 2, 3 etc.). Pressione até que todos os nós sejam desselecionados;
23) **Tecla Q** --> Seleciona nós-alvos (com borda vermelha);
24) **Tecla .** --> Alterna seleção entre os 15 tipos de imagens de nós do grafo (pressione 16 vezes);
25) **Tecla ;** --> Alterna seleção entre os nós de origem e de destina das arestas do nó selecionado. Selecione o maior nó do grafo e pressione a tecla ";" 3 vezes;
26) **Tecla /** --> Seleciona nós acrescidos ao grafo na última consulta ao banco de dados;
27) **Tecla j** --> Seleciona nós adjacentes comuns aos nós selecionados. Selecione dois nós e pressione a tecla j, seguido da tecla "," para ver os rótulos dos nós comuns;
28) **Tecla J** --> Seleciona nós adjacentes não comuns aos nós selecionados. Selecione dois nós e pressione a tecla J, seguido da tecla "," para ver os rótulos dos nós não comuns;

<br>

#### Pesquisa por nós e arestas no grafo

---

29) **Tecla q** --> Abre popup para pesquisar por rótulos dos nós no grafo. Digite um parâmetro de pesquisa (sem acento) ou pressione a tecla Enter para alternar para a pesquisa por rótulos das arestas;

<br>

#### Ativação dos modos de transparência

---

30) **Tecla t** --> Ativa o modo transparência por tipos de nós, permitindo a visualização alternada dos 15 tipos de imagens de nós do grafo (pressione 17 vezes);
31) **Tecla F5** --> Recarrega a página, exibindo o grafo em uma posição diferente da anterior;
32) **Tecla T** --> Ativa o modo transparência por conexões. Posicione o ponteiro do mouse sobre os nós para visualizar suas conexões e nós adjacentes;
33) **Tecla F5** --> Recarrega a página, exibindo o grafo em uma posição diferente da anterior;

<br><br>

### Terceira sequência de comandos:

Abra o link a seguir ([Exemplo 2](https://controlecidadao.github.io/sinarc/exemplo2.html)) em uma nova aba do navegador e aguarde o grafo ser exibido. Caso disponha de um segundo monitor, mova para ele a nova aba e pressione a **tecla b** para ajustar a altura da janela de visualização do grafo à altura da tela do monitor.<br>

<br>

#### Detecção de comunidades

---

1) **Tecla n** --> Aumenta a massa dos nós com tamanho de referência maior ou igual a 40. Pressione e segure a tecla n até que o "Fator", exibido no canto superior direito da tela, alcance 301;
2) **Tecla v** --> Ativa/deastiva destaque de comunidades de nós;
3) **Tecla V** --> Alterna exibição de nós por comunidades (grupos);

<br>

#### Adição de cores aos nós

---

4) **Tecla x** --> Adiciona cores aos nós selecionados;
5) **Tecla X** --> Remove cores adicionadas aos nós;

<br>

#### Deleção de nós

---

6) **Tecla Delete** --> Deleta do grafo os nós selecionados. Selecione nós no grafo e pressione a tecla Delete. O quantitativo de nós selecionados é exibido na tela;
7) **Tecla r** --> Exclui todos os nós que não se encontram selecionados;
8) **Tecla R** --> Exclui todos os nós que não se encontram interligados por arestas coloridas (vide [Exemplo 1](https://controlecidadao.github.io/sinarc/exemplo1.html));

<br>

#### Identificação da cadeia hierárquica de comando do nó-alvo

---

 9) **Tecla w** --> Adiciona cor para destacar todos os nós que integram a cadeia hierárquica de comando do nó-alvo;
10) **Tecla W** --> Exclui nós que não pertencem à cadeia hierárquica de comando do nó-alvo;

<br>

#### Consulta a sites externos e outros recursos

---
    
11) **Tecla d** --> Exibe informações sobre o nó selecionado extraídas de sites externos;
12) **Tecla D** --> Realiza pesquisa pelo nó selecionado no DOU, DIO-ES, DOM-ES, Querido Diário OKF, Portal da Transparência CGU e Jusbrasil;
13) **Tecla g** --> Realiza pesquisa pelo nó selecionado no Google;
14) **Tecla G** --> Realiza pesquisa avançada do nó selecionado nos domínios tc.br, mp.br, jus.br, gov.br, es.gov.br;    
15) **Tecla 1** --> Exibe comprovante e inscrição de situação cadastral da pessoa jurídica selecionada;
16) **Tecla 2** --> Realiza pesquisa pela pessoa física ou jurídica selecionada na base de dados de sanções da CGU (CEIS, CNEP, CEPIM e CEAF);
17) **Tecla 3** --> Tecla não usada;
18) **Tecla 4** --> Abre arquivo Excel contendo as tabelas de nós e de conexões retornadas da consulta ao banco de dados (depende de consulta em tempo real ao banco de dados);
19) **Tecla 5** --> Abre site Rede CNPJ;
20) **Tecla 6** --> Abre sites contendo bases de dados primárias da CGU (Dívida Ativa Geral, Dívia FGTS, Dívida Previdenciária, Sanções, Acordos de Leniência e Pessoas Expostas Politicamente) e da Receita Federal (CNPJ);
21) **Tecla 7** --> Exibe dados da pessoa jurídica em formato JSON;
22) **Tecla 8** --> Realiza consulta à API de Compras Governamentais do Governo Federal;
23) **Tecla 9** --> Tecla não usada.

<br>

#### Medidas de centralidade e distribuição de nós e arestas

---
    
24) **Tecla L** --> Exibe na tela a distribuição de arestas por tipo;
25) **Tecla u** --> Exibe na tela as 5 medidas de centralidade do grafo;
26) **Tecla U** --> Exibe na tela a distribuição de nós por tamanho;

<br>

#### Consulta ao banco de dados

---

27) **Tecla o** --> Abre nós selecionados como alvos em nova aba do navegador;
28) **Tecla O** --> Abre filiais da pessoa jurídica selecionada em nova aba do navegador;
29) **Tecla s** --> Pesquisa parâmetro (CNPJ, radical do CNPJ, razão social, nome da pessoa física) no banco de dados;
30) **Tecla +** --> Inclui nó selecionado na lista de nós-alvos;
31) **Tecla -** --> Exclui nó selecionado da lista de nós-alvos;
32) **Tecla y** --> Abre nós da lista de nós-alvos em uma nova aba do navegador;

<br>

#### Manual e dicas na tela

---
    
33) **Tecla ?** --> Exibe/oculta na tela as teclas de atalho do SINARC;
34) **Tecla h** --> Abre manual do SINARC em uma janela flututante;

<br>

#### Modo automático de visualização

---

35) **Tecla z** --> Ativa/desativa o modo automático de visualização;

<br>

#### Função de cópia do sistema operacional

---

36) **Tecla |** --> Ativa/desativa a função de cópia (Ctrl + c) do SINARC. Quando ativada, a função Ctrl + c do sistema operacional fica vinculada ao funcionamento do SINARC, não podendo ser usada com outros programas; quando desativada, copia o id do nó selecionado, permitindo ser tranferido para o programa Rede CNPJ (Ctrl + v).
<br>

Comandos que dependem de consulta em tempo real ao banco de dados, necessitando que o SINARC e o Rede CNPJ estejam em execução: **Teclas o O s y | 4** 

Os camandos que não dependem de nova consulta aos bancos de dados podem ser executados nos arquivos gerados pelo SINARC para compartilhamento (_arquivo_sinarc.zip_).

Para mais detalhes sobre o funcionamento de cada comando, consulte o item 8, [Uso do Mouse e do Teclado](https://controlecidadao.github.io/sinarc/help.html#uso_do_mouse), do Manual do SINARC.

<br>
</details>


<br><br>

## Como instalar o SINARC?

<br>

Para instalar o SINARC e o Rede CNPJ, siga as instruções contidas no arquivo [INSTRUÇÕES.txt](https://github.com/controlecidadao/sinarc/blob/main/INSTRU%C3%87%C3%95ES.txt), disponível na página principal deste repositório. Devido à sua **portabilidade**, é possível salvar e executar ambos os sistemas em um dispositivo de armazenamento portátil, como HD externo ou _pendrive_, sendo necessário 65 GB de espaço livre.

Para ampliar a capacidade de pesquisa, baixe e descompacte na pasta SINARC (criada pelo usuário para abrigar o sistema) a versão portátil e gratuita do programa [DB Browser](https://sqlitebrowser.org/dl/) (arquivo "_DB Browser for SQLite - .zip (no installer) for 64-bit Windows_"). Com o auxílio do DB Browser é possível realizar filtros e consultas diretamente nas tabelas dos bancos de dados do sistema, combinando critérios de busca que não estão disponíveis nas interfaces gráficas do SINARC e do Rede CNPJ para chegar aos números de CNPJ que deseja explorar.

Conquanto o SINARC utilize apenas a modelagem de criação e consulta aos bancos de dados do projeto Rede CNPJ, optou-se por disponibilizar também a íntegra deste formidável programa, permitindo ao cidadão explorar os recursos das duas ferramentas e, quem sabe, desenvolver seu próprio sistema de análise de grafos, com funcionalidades ainda mais interessantes, certamente, disponibilizando-o também como software livre para inspirar outras pessoas a se engajarem em iniciativas que promovam a transparência e a cidadania a partir de dados abertos.

O manual de instruções do SINARC pode ser acessado pressionando-se a tecla h (de _help_) durante o uso do sistema. Já o manual do Rede CNPJ encontra-se disponível na página do projeto.

<br>

<p align="center" width="100%">
<img width="100%" src="./images/print_screen.png" />
</p>

<p align="center" width="100%">
Exemplo de rede complexa de CNPJ sendo explorada pelo SINARC
</p>

<br><br>

## A quem se destina o SINARC?

<br>

O SINARC se destina a todos que exercem o controle social e institucional da Administração Pública, como auditores, jornalistas, comissões de licitação, procuradorias jurídicas, sistemas de controle interno, ministérios públicos, entre outros órgãos e instituições, além do cidadão interessado em obter informações sobre a estrutura empresarial de grupos econômicos, em especial sobre as pessoas físicas e jurídicas que integram a cadeia hierárquica de comando, a situação jurídica de empresas e as relações existentes entre pessoas físicas e jurídicas cadastradas na base de dados pública de CNPJ da Receita Federal.

**ATENÇÃO:** Antes de utilizar as informações obtidas por meio do SINARC, valide-as mediante consulta direta aos portais de transparência e às bases de dados primárias atualizadas.

<br><br>

## Exemplos de utilização do SINARC

<br>

Confira-se, a seguir, exemplos de exploração de redes complexas com o SINARC:

<br><br>

### **CNPJ 33.592.510/0001-54 (Vale S.A.):**<br>
*	Aberto em 4 camadas com o SINARC<br>
*	6.602 nós<br>
*	12.884 arestas (azul)<br>
* Fonte: [Empresas listadas na B3](https://www.idinheiro.com.br/investimentos/cnpj-empresas-listadas-b3/)
<br>

<p align="center" width="100%">
<img width="100%" src="./images/vale_sa_1.png" />
</p>

<p align="center" width="100%">
Visão panorâmica da rede complexa gerada pelo SINARC
</p>

<br><br>

<p align="center" width="100%">
<img width="100%" src="./images/vale_sa_2.png" />
</p>

<p align="center" width="100%">
Aproximação da rede complexa gerada pelo SINARC
</p>

<br><br>

<p align="center" width="100%">
<img width="100%" src="./images/vale_sa_3.png" />
</p>

<p align="center" width="100%">
Detalhe da rede complexa gerado pelo SINARC
</p>

<br><br>

### **CNPJ de empresas listadas na B3 S.A. (Bolsa de Valores):**<br>
*	Abertos em 2 camadas com o SINARC<br>
*	31.606 nós<br>
*	45.268 arestas (azul)<br>
* Fonte: [Empresas listadas na B3](https://www.idinheiro.com.br/investimentos/cnpj-empresas-listadas-b3/) 
<br>

<p align="center" width="100%">
<img width="100%" src="./images/b3_1.png" />
</p>

<p align="center" width="100%">
Visão panorâmica da rede complexa gerada pelo SINARC
</p>

<br><br>

<p align="center" width="100%">
<img width="100%" src="./images/b3_2.png" />
</p>

<p align="center" width="100%">
Aproximação da rede complexa gerada pelo SINARC
</p>

<br><br>

<p align="center" width="100%">
<img width="100%" src="./images/b3_3.png" />
</p>

<p align="center" width="100%">
Detalhe da rede complexa gerado pelo SINARC (com ocultação de arestas)
</p>

<br><br>

<p align="center" width="100%">
<img width="100%" src="./images/b3_4.png" />
</p>

<p align="center" width="100%">
Vínculo existente entre duas empresas, identificado pelo SINARC na 8ª camada
</p>

<br><br>

## Algumas possibilidades de uso do SINARC

<br>

✅ Conhecer a estrutura de grupos empresariais com base no CNPJ, razão social, nome de fantasia, nome ou CPF do sócio, entre outros parâmetros.

✅ Identificar vínculos entre pessoas físicas e jurídicas a partir de notícias publicadas na internet ([Vídeo](https://www.youtube.com/watch?v=R73ixbeP0II)).

✅ Representar, por meio de grafos, empresas cujos números de CNPJ, no formato 00000000000000 ou 00.000.000/0000-00, encontram-se citadas em relatórios técnicos, diários oficiais ou qualquer documento ou tela com texto selecionável.

✅ Identificar vínculos entre licitantes a partir das atas das sessões públicas de procedimentos licitatórios ([Ata Pregão Eletrônico](https://transparencia.vilavelha.es.gov.br/Licitacao.Detalhes.aspx?municipioId=1&LicitacaoId=32772)), bem como das bases de dados disponibilizadas nos portais de transparência da Administração Pública.

✅ Identificar pessoas físicas e jurídicas com posições estratégicas na rede a partir da aplicação de algoritmos matemáticos de medidas de centralidade de grafos, como Centralidade de Grau (_Degree Centrality_), Centralidade de Intermediação (_Betweenness Centrality_), Centralidade de Proximidade (_Closeness Centrality_), Centralidade de Autovetor (_Eigenvector Centrality_) e Ranking de Página (_PageRank_).

✅ Identificar toda a cadeia hierárquica formada por pessoas físicas e jurídicas que integram os grupos econômicos controladores de determinada empresa.

✅ Gerar grafo contendo todas as empresas que se enquadrem na combinação de determinados critérios (mesmo endereço, rua, CEP, atividade econômica etc.), mediante consulta prévia à base de dados usando o programa gratuito [DB Browser](https://sqlitebrowser.org/).

<br><br>

## Explorando conexões com o SINARC

<br>

Relação de sites contendo informações (nomes de pessoas físicas, jurídicas e números de CNPJ) para explorar com o SINARC:

* [Empresas beneficiadas por renúncias fiscais de tributos federais (Receita Federal)](https://dados.gov.br/dados/conjuntos-dados/renuncias-fiscais-de-tributos-federais). Se a página apresentar "403 Error", clique na barra de endereço e aperte a tecla Enter para recarregá-la. Clique em "Recursos" e localize o item "(Dirbi) Renúncia Fiscal por Regime Especial de Tributação". Clique em "Acessar o recurso" e realize do download do arquivo CSV (568 mil linhas e 675MB). Abra o arquivo com o Excel, formate a coluna "cnpj" como texto e gere uma tabela dinâmica com as colunas "cnpj", "nome" e "valorConsolidado". Aplique filtros usando as demais colunas, selecione os números de CNPJ desejados e pressione Ctrl + c para explorá-los com o SINARC.

* [Reembolsos suspeitos de despesas realizadas pela Câmara dos Deputados (Operação Serenata de Amor)](https://jarbas.serenata.ai/dashboard/chamber_of_deputies/reimbursement/)

* [Notícias recentes sobre fraudes em licitação (Google)](https://www.google.com/search?q=fraude+licita%C3%A7%C3%A3o+ltda&sca_esv=b28375632d0b0304&rlz=1C1GCEU_pt-BRBR1106BR1106&biw=1242&bih=575&tbs=sbd%3A1&tbm=nws&sxsrf=ADLYWIIhiXt6MSk8cPC0shxAMoiwdf1Pyw%3A1731870048554&ei=YD06Z4-9IYWp1sQPs5bvuAw&ved=0ahUKEwiP7anYhuSJAxWFlJUCHTPLG8cQ4dUDCA0&uact=5&oq=fraude+licita%C3%A7%C3%A3o+ltda&gs_lp=Egxnd3Mtd2l6LW5ld3MiF2ZyYXVkZSBsaWNpdGHDp8OjbyBsdGRhMgUQIRigATIFECEYoAEyBRAhGKABMgUQIRigAUj6HlCgEljbG3AAeACQAQCYAcgBoAGhCaoBBTAuNy4xuAEDyAEA-AEBmAIHoALpB8ICBRAhGJ8FmAMAiAYBkgcDMC43oAfYOg&sclient=gws-wiz-news)

* [Atas de sessões públicas de pregões eletrônicos (Google)](https://www.google.com/search?q=ata+sess%C3%A3o+preg%C3%A3o+ltda+filetype%3Apdf&sca_esv=b28375632d0b0304&rlz=1C1GCEU_pt-BRBR1106BR1106&biw=1242&bih=575&sxsrf=ADLYWIK6WykeXV5nAHsyue6o-IjFX4qkhQ%3A1731868416556&ei=ADc6Z53UIYme5OUP7vzCqQk&ved=0ahUKEwid1JDOgOSJAxUJD7kGHW6-MJUQ4dUDCA8&uact=5&oq=ata+sess%C3%A3o+preg%C3%A3o+ltda+filetype%3Apdf&gs_lp=Egxnd3Mtd2l6LXNlcnAiJWF0YSBzZXNzw6NvIHByZWfDo28gbHRkYSBmaWxldHlwZTpwZGZIuidQ8x5YmSRwAngBkAEAmAGGAaAB-QSqAQMwLjW4AQPIAQD4AQGYAgKgAgjCAgoQABiwAxjWBBhHmAMAiAYBkAYIkgcBMqAH4QE&sclient=gws-wiz-serp)
* [Diário Oficial do Estado do Espírito Santo (DIO-ES)](https://ioes.dio.es.gov.br/portal/visualizacoes/diario_oficial)

* [Diário Oficial dos Municípios do Espírito Santo (DOM-ES)](https://ioes.dio.es.gov.br/dom)

* [Bases de dados de licitações, contratos e execução orçamentária do Estado do Espírito Santo](https://dados.es.gov.br/dataset?tags=portal+da+transpar%C3%AAncia)

* [Empresas listadas na B3](https://www.idinheiro.com.br/investimentos/cnpj-empresas-listadas-b3/)

* [Empresas por município](https://cadastroempresa.com.br/)


<br><br>
## 📝 Histórico de versões

<details>
<summary>Versões</summary>

<br><br>
🗓️ **Versões relevantes do código:**

<br>

Versão 0.1.1 (09-04-2025):
* Corrigido o carregamento offline das imagens do grafo.
* Corrigida a portabilidade na geração do arquivo _arquivo_sinarc.zip_.
<br>

Versão 0.1.0 (14-11-2024):
* Versão beta inicial.
<br>


<!--## 🚧 Página em Construção...-->




