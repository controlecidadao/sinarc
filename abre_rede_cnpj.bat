@echo off
@echo ================================
@echo EXECUTANDO REDE CNPJ DIRETAMENTE
@echo ================================
@echo.

:: Obtém o diretório atual
@set CURRENT_DIR=%cd%
@echo Diretorio atual: %CURRENT_DIR%

:: Verifica se o Python do ambiente virtual existe
@if not exist "%CURRENT_DIR%\miniconda3\envs\rede_cnpj\python.exe" (
    @echo ERRO: Python do ambiente 'rede_cnpj' nao encontrado.
    @pause
    @exit /b 1
)

@echo Mudando para o diretorio 'rede-cnpj-master\rede'...
@cd "%CURRENT_DIR%\rede-cnpj-master\rede"
@echo Diretorio atual: %cd%

@echo Executando 'python rede.py' diretamente do ambiente virtual...
@echo.
@"%CURRENT_DIR%\miniconda3\envs\rede_cnpj\python.exe" rede.py
@pause
@exit /b