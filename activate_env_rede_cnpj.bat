@echo off
REM Script para ativar os ambientes virtuais base e rede_cnpj

REM Configurar PATH para o conda
set "PATH=%cd%\..\miniconda3\Scripts;%cd%\..\miniconda3\condabin;%PATH%"

REM Ativar o ambiente virtual 'base'
call "%cd%\..\miniconda3\Scripts\activate.bat" base
if %errorlevel% neq 0 (
    echo Erro ao ativar o ambiente 'base'
    pause
    exit /b 1
)
echo.
echo Ambiente 'base' ativado com sucesso
echo.

REM Ativar o ambiente virtual 'rede_cnpj'
call conda activate "%cd%\..\miniconda3\envs\rede_cnpj"
if %errorlevel% neq 0 (
    echo Erro ao ativar o ambiente 'rede_cnpj'
    pause
    exit /b 1
)
echo.
echo Ambiente 'rede_cnpj' ativado com sucesso
echo.

REM Manter o prompt aberto
cmd /k