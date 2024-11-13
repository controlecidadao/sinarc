@echo off
echo Iniciando execucao dos scripts Python...

set PYTHON_ENV=%cd%\..\..\miniconda3\envs\rede_cnpj\python.exe

@REM echo Executando dados_cnpj_baixa.py...
@REM "%PYTHON_ENV%" dados_cnpj_baixa.py
@REM if errorlevel 1 (
@REM     echo Erro ao executar dados_cnpj_baixa.py
@REM     pause
@REM     exit /b 1
@REM )

echo Executando dados_cnpj_para_sqlite.py...
"%PYTHON_ENV%" dados_cnpj_para_sqlite.py
if errorlevel 1 (
    echo Erro ao executar dados_cnpj_para_sqlite.py
    pause
    exit /b 1
)

echo Executando rede_cria_tabela_cnpj_links_ete.py...
"%PYTHON_ENV%" rede_cria_tabela_cnpj_links_ete.py
if errorlevel 1 (
    echo Erro ao executar rede_cria_tabela_cnpj_links_ete.py
    pause
    exit /b 1
)

echo Executando rede_cria_tabela_rede.db.py...
"%PYTHON_ENV%" rede_cria_tabela_rede.db.py
if errorlevel 1 (
    echo Erro ao executar rede_cria_tabela_rede.db.py
    pause
    exit /b 1
)

echo Todos os scripts foram executados com sucesso!
pause