@echo off
REM Script para ativar os ambientes virtuais base e sinarc

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

REM Ativar o ambiente virtual 'sinarc'
call conda activate "%cd%\..\miniconda3\envs\sinarc"
if %errorlevel% neq 0 (
    echo Erro ao ativar o ambiente 'sinarc'
    pause
    exit /b 1
)
echo.
echo Ambiente 'sinarc' ativado com sucesso
echo.

REM Manter o prompt aberto
cmd /k