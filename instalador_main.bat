@echo off
setlocal

:: Enable UTF-8
@echo.
chcp 65001
@echo.

title Instalação do SINARC


@REM :: Initialize
@REM :inicio
@REM cls
@REM echo.
@REM echo Bem-vindo(a) à rotina de instalação do Sistema Integrado de Análise de Redes Complexas - SINARC!
@REM echo.
@REM echo Deseja instalar o SINARC?
@REM echo.
@REM echo 1. Sim
@REM echo 2. Não
@REM echo.
@REM set /p opcao="Selecione a opção (1 ou 2): "


@REM :: Input Validation
@REM if "%opcao%"=="1" (
@REM     goto continuar
@REM ) else if "%opcao%"=="2" (
@REM     echo.
@REM     echo Fechando a rotina de instalação...
@REM     echo.
@REM     pause
@REM     exit
@REM ) else (
@REM     echo.
@REM     echo Opção inválida! Por favor, escolha 1 ou 2.
@REM     echo.
@REM     pause
@REM     goto inicio
@REM )


@REM :: Installation Steps
@REM :continuar
@REM echo.
@REM echo Sábia decisão! Continuando a instalação...
@REM echo.
@REM pause


@REM :: Section: Miniconda Installation
@REM @echo.
@REM @echo.
@REM @echo.
@REM @echo ==================================
@REM @echo OBTENDO CAMINHO DO DIRETÓRIO LOCAL
@REM @echo ==================================
@REM @echo.
@REM @echo Obtendo caminho do diretório local...
@REM set CURRENT_DIR=%cd%
@REM @echo Caminho do diretório local: %CURRENT_DIR%


@REM :: Check if Miniconda directory already exists
@REM if exist "%CURRENT_DIR%\miniconda3" (
@REM    echo.
@REM    echo A pasta 'miniconda3' já existe.
@REM    echo Removendo a instalação existente...
@REM    rmdir /s /q "%CURRENT_DIR%\miniconda3"
@REM    echo Instalação anterior removida. Continuando com a nova instalação...
@REM )

@REM @echo.
@REM @echo.
@REM @echo.
@REM @echo ====================
@REM @echo INSTALANDO MINICONDA
@REM @echo ====================
@REM @echo.
@REM @echo Criando a pasta "miniconda3" para o Miniconda...
@REM mkdir miniconda3
@REM @echo.

@REM :: Download the Miniconda installer with integrity check
@REM @echo Realizando o download do Miniconda...
@REM set MINICONDA_URL=https://repo.anaconda.com/miniconda/Miniconda3-latest-Windows-x86_64.exe
@REM curl -L -O %MINICONDA_URL%
@REM if not exist Miniconda3-latest-Windows-x86_64.exe (
@REM     echo.
@REM     echo Erro: Falha no download. Saindo...
@REM     pause
@REM     exit /b 1
@REM )

@REM @echo.
@REM @echo Verificando integridade do arquivo...
@REM certutil -hashfile Miniconda3-latest-Windows-x86_64.exe SHA256
@REM :: Add checksum verification here if the expected hash is known, for example:
@REM :: set expected_hash=your_expected_hash_here
@REM :: if not "%hash%"=="%expected_hash%" (
@REM ::     echo.
@REM ::     echo Hash verification failed. Exiting.
@REM ::     exit /b 1
@REM :: )

@REM @echo.
@REM @echo Instalando Miniconda em %CURRENT_DIR%\miniconda3...
@REM start /WAIT "" Miniconda3-latest-Windows-x86_64.exe /InstallationType=JustMe /RegisterPython=0 /S /D=%CURRENT_DIR%\miniconda3
@REM if errorlevel 1 (
@REM     echo.
@REM     echo Falha na instalação. Saindo...
@REM     pause
@REM     exit /b 1
@REM )


@REM :: Clean up installer
@REM @echo Removendo arquivo de instalação...
@REM DEL Miniconda3-latest-Windows-x86_64.exe
@REM @echo Instalação do Miniconda realizada com sucesso!
@REM @echo.

@REM pause
@REM exit

setlocal EnableDelayedExpansion

echo.
echo.
echo.
echo =================================
echo DOWNLOAD DO REPOSITÓRIO REDE CNPJ
echo =================================
echo.

:: Versão do script
echo Versão do Script REDE CNPJ: 1.0.0
echo Data: %DATE%
echo.

:: Verifica conexão com a internet
echo Verificando conexão com a internet...
ping 8.8.8.8 -n 1 -w 1000 > nul
if errorlevel 1 (
    echo Erro: Sem conexão com a internet!
    goto :ERROR
)

:: Inicia download
echo.
echo Baixando arquivo master.zip do repositório REDE CNPJ...
echo  - Fonte: Github (waltervix/rede-cnpj)

:: Tenta realizar o download
curl --insecure -L https://github.com/waltervix/rede-cnpj/archive/refs/heads/master.zip -o master.zip
if errorlevel 1 (
    echo Erro: Falha ao baixar o arquivo master.zip
    goto :ERROR
)

:: Verifica se o arquivo foi baixado
if not exist master.zip (
    echo Erro: Arquivo master.zip não encontrado após download
    goto :ERROR
)

echo.
echo Descompactando repositório REDE CNPJ...
powershell -Command "& {try { Expand-Archive -Path master.zip -DestinationPath . -Force } catch { exit 1 }}"
if errorlevel 1 (
    echo Erro: Falha ao descompactar o arquivo master.zip
    goto :ERROR
)

echo.
echo Removendo arquivo master.zip temporário...
del /q master.zip
if errorlevel 1 (
    echo Aviso: Não foi possível remover o arquivo master.zip temporário
)

echo Operação concluída com sucesso!
echo.
@REM pause
goto :END

:ERROR
echo Operação finalizada com erro!
echo.
pause
exit /b 1

:END
@REM endlocal
@REM exit /b 0

echo.
echo.
echo.
echo ==============================
echo DOWNLOAD DO REPOSITÓRIO SINARC
echo ==============================
echo.

@REM :: Inicia download
@REM echo.
@REM echo Baixando arquivo main.zip do repositório SINARC...
@REM echo  - Fonte: Github (waltervix/sinarc)

@REM :: Tenta realizar o download
@REM curl --insecure -L https://github.com/waltervix/sinarc/archive/refs/heads/main.zip -o main.zip
@REM if errorlevel 1 (
@REM     echo Erro: Falha ao baixar o arquivo main.zip
@REM     goto :ERROR
@REM )

:: Verifica se o arquivo foi baixado
if not exist main.zip (
    echo Erro: Arquivo main.zip não encontrado após download
    goto :ERROR
)

echo.
echo Descompactando repositório SINARC...
powershell -Command "& {try { Expand-Archive -Path main.zip -DestinationPath . -Force } catch { exit 1 }}"
if errorlevel 1 (
    echo Erro: Falha ao descompactar o arquivo main.zip
    goto :ERROR
)

echo.
echo Removendo arquivo main.zip temporário...
del /q main.zip
if errorlevel 1 (
    echo Aviso: Não foi possível remover o arquivo main.zip temporário
)


echo.
echo Operação concluída com sucesso!
echo.
@REM pause
goto :END

:ERROR
echo.
echo Operação finalizada com erro!
echo.
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
@echo ================================================
@echo SUBSTITUI ARQUIVO rede-cnpj-master\rede\rede.ini
@echo ================================================
@echo.

:: Copia o arquivo 'sinarc-main\rede.ini' para a pasta 'sinarc-main\rede-cnpj-master\rede', substituindo o lá existente
@echo Copiando arquivo 'rede.ini' para pasta 'rede-cnpj-master\rede'
copy %cd%\sinarc-main\rede.ini %cd%\..\rede-cnpj-master\rede

::@echo.
::@echo.
::@echo.
::@echo ************************************************
::@echo COPIA ARQUIVOS .BAT PARA O DIRETORIO LOCAL
::@echo ************************************************
::@echo.

:: Copia o arquivo 'sinarc-main\abre_rede_cnpj.bat' para a pasta '%cd%'
::@echo Copiando arquivo 'sinarc-main\abre_rede_cnpj.bat' para pasta '%cd%'
::copy %cd%\sinarc-main\abre_rede_cnpj.bat %cd%\abre_rede_cnpj.bat

:: Copia o arquivo 'sinarc-main\abre_sinarc.bat' para a pasta '%cd%'
::@echo Copiando arquivo 'sinarc-main\abre_sinarc.bat' para pasta '%cd%'
::copy %cd%\sinarc-main\abre_sinarc.bat %cd%\abre_sinarc.bat


@echo.
@echo.
@echo.
@echo ==============================
@echo RENOMEIA ARQUIVOS TXT PARA BAT
@echo ==============================
@echo.

:: Renomeia arquivos TXT para BAT da pasta 'sinarc-main'
@REM @echo Renomeando 'instala_miniconda.txt' para BAT
@REM copy %CURRENT_DIR%\sinarc-main\instala_miniconda.txt %CURRENT_DIR%\sinarc-main\instala_miniconda.bat
@REM @echo.

@echo Renomeando 'cria_ambiente_rede_cnpj.txt' para BAT
copy %cd%\sinarc-main\cria_ambiente_rede_cnpj.txt %cd%\sinarc-main\cria_ambiente_rede_cnpj.bat
@echo.

@echo Renomeando 'cria_ambiente_sinarc.txt' para BAT
copy %cd%\sinarc-main\cria_ambiente_sinarc.txt %cd%\sinarc-main\cria_ambiente_sinarc.bat
@echo.

@REM @echo Renomeando 'abre_rede_cnpj.txt' para BAT
@REM copy %cd%\sinarc-main\abre_rede_cnpj.txt %cd%\sinarc-main\abre_rede_cnpj.bat
@REM @echo.

@REM @echo Renomeando 'abre_sinarc.txt' para BAT
@REM copy %cd%\sinarc-main\abre_sinarc.txt %cd%\sinarc-main\abre_sinarc.bat
@REM @echo.


@echo.
@echo.
@echo.
@echo =================================
@echo EXECUTA ARQUIVOS BAT EM SEQUENCIA
@echo =================================
@echo.

:: Executa arquivos BAT da pasta 'sinarc-main'

@REM call %CURRENT_DIR%\sinarc-main\instala_miniconda.bat

call %cd%\sinarc-main\cria_ambiente_rede_cnpj.bat

pause
exit

@REM call %cd%\sinarc-main\cria_ambiente_sinarc.bat


@echo.
@echo.
@echo.
@echo ===========================================================================
@echo SUBSTITUI ARQUIVO miniconda3\envs\sinarc\Lib\site-packages\pyvis\network.py
@echo ===========================================================================
@echo.

:: Copia o arquivo 'sinarc-main\network.py' para a pasta 'miniconda3\envs\sinarc\Lib\site-packages\pyvis\network.py', substituindo o lá existente
@echo Copiando arquivo 'network.py' para pasta 'miniconda3\envs\sinarc\Lib\site-packages\pyvis'
copy %cd%\sinarc-main\network.py %cd%\miniconda3\envs\sinarc\Lib\site-packages\pyvis


::@echo.
::@echo.
::@echo.
::@echo ***********************
::@echo BAIXANDO BASES DE DADOS
::@echo ***********************
::@echo.

::call %cd%\sinarc-main\baixa_banco_de_dados.bat


::@echo.
::@echo.
::@echo.
::@echo **************************
::@echo ABRINDO SINARC E REDE CNPJ
::@echo **************************
::@echo.

::@echo Abrindo REDE CNPJ em outra janela...
::start "" "%cd%\sinarc-main\abre_rede_cnpj.bat"

:: Ao abrir a outra janela, o script continua. Por isso deste tempo de espera.
::@TIMEOUT /t 30
::@echo.

::@echo Abrindo SINARC em outra janela...
::start "" "%cd%\sinarc-main\abre_sinarc.bat"

pause
exit

