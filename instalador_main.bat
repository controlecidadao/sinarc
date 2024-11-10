echo off
cls
setlocal

:: Enable UTF-8
@echo.
chcp 65001
@echo.

title Instalação do SINARC



@echo.
@echo.
@echo ==============================
@echo INICIANDO ROTINA DE INSTALAÇÃO
@echo ==============================
@echo.

:: Inicia rotina de instalação

:inicio
@echo.
@echo Bem-vindo(a) à rotina de instalação do Sistema Integrado de Análise de Redes Complexas - SINARC!
@echo.
@echo Deseja instalar o SINARC?
@echo.
@echo 1. Sim
@echo 2. Não
@echo.
set /p opcao="Selecione a opção (1 ou 2): "

:: Validação da entrada
if "%opcao%"=="1" (
    goto continuar
) else if "%opcao%"=="2" (
    echo.
    echo Fechando a rotina de instalação...
    echo.
    pause
    exit
) else (
    echo.
    echo Opção inválida! Por favor, escolha 1 ou 2.
    echo.
    pause
    goto inicio
)

:continuar
@echo.
@echo Sábia decisão! Continuando a instalação...
@echo.
pause



@echo.
@echo.
@echo.
@echo ==================================
@echo OBTENDO CAMINHO DO DIRETÓRIO LOCAL
@echo ==================================
@echo.

:: Obtém caminho completo do diretório local

@echo Obtendo caminho do diretório local...
set CURRENT_DIR=%cd%
@echo Caminho do diretório local: %CURRENT_DIR%



@echo.
@echo.
@echo.
@echo ====================
@echo INSTALANDO MINICONDA
@echo ====================
@echo.

:: Verifica se a pasta miniconda3 já existe e deleta a instalação anterior
if exist "%CURRENT_DIR%\miniconda3" (
   echo A pasta 'miniconda3' já existe.
   echo Removendo a instalação existente...
   rmdir /s /q "%CURRENT_DIR%\miniconda3"
   echo Instalação anterior removida. Continuando com a nova instalação...
)

@echo Criando a pasta "miniconda3" para o Miniconda...
mkdir miniconda3
@echo.

:: Realiza o download do instalador do Miniconda e verifica a integridade do arquivo
@echo Realizando o download do Miniconda...
set MINICONDA_URL=https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe
curl -L -O %MINICONDA_URL%
if not exist Miniconda3-latest-Windows-x86_64.exe (
    echo.
    echo Erro: Falha no download. Saindo...
    pause
    exit /b 1
)

@echo.
@echo Verificando integridade do arquivo...
certutil -hashfile Miniconda3-latest-Windows-x86_64.exe SHA256
:: Add checksum verification here if the expected hash is known, for example:
:: set expected_hash=your_expected_hash_here
:: if not "%hash%"=="%expected_hash%" (
::     echo.
::     echo Hash verification failed. Exiting.
::     exit /b 1
:: )

@echo.
@echo Instalando Miniconda em %CURRENT_DIR%\miniconda3...
start /WAIT "" Miniconda3-latest-Windows-x86_64.exe /InstallationType=JustMe /RegisterPython=0 /S /D=%CURRENT_DIR%\miniconda3
if errorlevel 1 (
    echo.
    echo Falha na instalação. Saindo...
    pause
    exit /b 1
)


:: Deleta o instalador do Miniconda
@echo Removendo arquivo de instalação...
DEL Miniconda3-latest-Windows-x86_64.exe
@echo Instalação do Miniconda realizada com sucesso!
@echo.

@REM pause
@REM exit



setlocal EnableDelayedExpansion

@echo.
@echo.
@echo.
@echo =================================
@echo DOWNLOAD DO REPOSITÓRIO REDE CNPJ
@echo =================================
@echo.

:: Versão do script
@echo Versão do Script REDE CNPJ: 1.2
@echo Data do Fork: 10/11/2024
@echo.

:: Verifica conexão com a internet
@echo Verificando conexão com a internet...
ping 8.8.8.8 -n 1 -w 1000 > nul
if errorlevel 1 (
    echo Erro: Sem conexão com a internet!
    goto :ERROR
)

:: Inicia download 
@echo.
@echo Baixando arquivo master.zip do repositório REDE CNPJ...
@echo  - Fonte: Github (controlecidadao/rede-cnpj)

:: Tenta realizar o download
curl --insecure -L https://github.com/controlecidadao/rede-cnpj/archive/refs/heads/master.zip -o master.zip
if errorlevel 1 (
    echo Erro: Falha ao baixar o arquivo master.zip
    goto :ERROR
)

:: Verifica se o arquivo foi baixado
if not exist master.zip (
    echo Erro: Arquivo master.zip não encontrado após download
    goto :ERROR
)

@echo.
@echo Descompactando repositório REDE CNPJ...
powershell -Command "& {try { Expand-Archive -Path master.zip -DestinationPath . -Force } catch { exit 1 }}"
if errorlevel 1 (
    echo Erro: Falha ao descompactar o arquivo master.zip
    goto :ERROR
)

@echo.
@echo Removendo arquivo master.zip temporário...
del /q master.zip
if errorlevel 1 (
    echo Aviso: Não foi possível remover o arquivo master.zip temporário
)

@echo Operação concluída com sucesso!
@echo.
goto :END

:ERROR
@echo Operação finalizada com erro!
@echo.
pause
exit /b 1

:END
@REM endlocal
@REM exit /b 0


@REM pause
@REM exit



@echo.
@echo.
@echo.
@echo ==============================
@echo DOWNLOAD DO REPOSITÓRIO SINARC
@echo ==============================
@echo.

:: Inicia download
@echo.
@echo Baixando arquivo main.zip do repositório SINARC...
@echo  - Fonte: Github (controlecidadao/sinarc)

:: Tenta realizar o download
curl --insecure -L https://github.com/controlecidadao/sinarc/archive/refs/heads/main.zip -o main.zip
if errorlevel 1 (
    echo Erro: Falha ao baixar o arquivo main.zip
    goto :ERROR
)

:: Verifica se o arquivo foi baixado
if not exist main.zip (
    echo Erro: Arquivo main.zip não encontrado após download
    goto :ERROR
)

@echo.
@echo Descompactando repositório SINARC...
powershell -Command "& {try { Expand-Archive -Path main.zip -DestinationPath . -Force } catch { exit 1 }}"
if errorlevel 1 (
    echo Erro: Falha ao descompactar o arquivo main.zip
    goto :ERROR
)

@echo.
@echo Removendo arquivo main.zip temporário...
del /q main.zip
if errorlevel 1 (
    echo Aviso: Não foi possível remover o arquivo main.zip temporário
)


@echo Operação concluída com sucesso!
@echo.
goto :END

:ERROR
@echo.
@echo Operação finalizada com erro!
@echo.
pause
exit /b 1

:END
@REM endlocal
@REM exit /b 0



@echo.
@echo.
@echo.
@echo ==============================
@echo RENOMEIA ARQUIVOS TXT PARA BAT
@echo ==============================
@echo.

:: Renomeia arquivos TXT para BAT na pasta 'sinarc-main'

@echo Renomeando 'cria_ambiente_rede_cnpj.txt' para BAT
copy %cd%\sinarc-main\cria_ambiente_rede_cnpj.txt %cd%\sinarc-main\cria_ambiente_rede_cnpj.bat
@echo.

@echo Renomeando 'cria_ambiente_sinarc.txt' para BAT
copy %cd%\sinarc-main\cria_ambiente_sinarc.txt %cd%\sinarc-main\cria_ambiente_sinarc.bat
@echo.

@echo Renomeando 'abre_rede_cnpj.txt' para BAT
copy %cd%\sinarc-main\abre_rede_cnpj.txt %cd%\sinarc-main\abre_rede_cnpj.bat
@echo.

@echo Renomeando 'abre_sinarc.txt' para BAT
copy %cd%\sinarc-main\abre_sinarc.txt %cd%\sinarc-main\abre_sinarc.bat
@echo.



@echo.
@echo.
@echo.
@echo ==========================================
@echo COPIA ARQUIVOS .BAT PARA O DIRETORIO LOCAL
@echo ==========================================
@echo.

:: Copia arquivos 'sinarc-main\abre_rede_cnpj.bat' e 'sinarc-main\abre_sinarc.bat' para a pasta '%cd%'

@echo Copiando arquivo 'sinarc-main\abre_rede_cnpj.bat' para pasta '%cd%'
copy %cd%\sinarc-main\abre_rede_cnpj.bat %cd%\abre_rede_cnpj.bat

@echo Copiando arquivo 'sinarc-main\abre_sinarc.bat' para pasta '%cd%'
copy %cd%\sinarc-main\abre_sinarc.bat %cd%\abre_sinarc.bat



@echo.
@echo.
@echo.
@echo ==========================
@echo CRIANDO AMBIENTES VIRTUAIS
@echo ==========================
@echo.

:: Executa arquivos BAT na pasta 'sinarc-main'

@echo Criando ambiente virtual rede_cnpj...
call %cd%\sinarc-main\cria_ambiente_rede_cnpj.bat

@echo Criando ambiente virtual sinarc...
call %cd%\sinarc-main\cria_ambiente_sinarc.bat



@echo.
@echo.
@echo.
@echo ===========================================================================
@echo SUBSTITUI ARQUIVO miniconda3\envs\sinarc\Lib\site-packages\pyvis\network.py
@echo ===========================================================================
@echo.

:: Copia arquivo 'sinarc-main\network.py' para a pasta 'miniconda3\envs\sinarc\Lib\site-packages\pyvis\network.py', substituindo o lá existente

@echo Copiando arquivo 'network.py' para pasta 'miniconda3\envs\sinarc\Lib\site-packages\pyvis'
copy %cd%\sinarc-main\network.py %cd%\miniconda3\envs\sinarc\Lib\site-packages\pyvis



@echo.
@echo.
@echo.
@echo ================================================
@echo SUBSTITUI ARQUIVO rede-cnpj-master\rede\rede.ini
@echo ================================================
@echo.

:: Copia arquivo 'sinarc-main\rede.ini' para a pasta 'rede-cnpj-master\rede', substituindo o lá existente

@echo Copiando arquivo 'rede.ini' para pasta 'rede-cnpj-master\rede'
copy %cd%\sinarc-main\rede.ini %cd%\rede-cnpj-master\rede



::echo.
::echo.
::echo.
::echo =======================
::echo BAIXANDO BASES DE DADOS
::echo =======================
::echo.

::call %cd%\sinarc-main\baixa_banco_de_dados.bat

pause
exit
