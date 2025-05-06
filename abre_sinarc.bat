@echo off
@echo =============================
@echo EXECUTANDO SINARC DIRETAMENTE
@echo =============================
@echo.

:: Obtém o diretório atual
@set CURRENT_DIR=%cd%
@echo Diretorio atual: %CURRENT_DIR%

:: Verifica se o Python do ambiente virtual existe
@if not exist "%CURRENT_DIR%\miniconda3\envs\sinarc\python.exe" (
    @echo ERRO: Python do ambiente 'sinarc' nao encontrado.
    @pause
    @exit /b 1
)

@echo Mudando para o diretorio 'sinarc-main'...
@if not exist "%CURRENT_DIR%\sinarc-main" (
    @echo ERRO: Diretorio 'sinarc-main' nao encontrado.
    @pause
    @exit /b 1
)

@cd "%CURRENT_DIR%\sinarc-main"
@echo Diretorio atual: %cd%

@echo Executando 'python sinarc.py' diretamente do ambiente virtual...
@echo.
@"%CURRENT_DIR%\miniconda3\envs\sinarc\python.exe" sinarc.py
@pause
@exit /b