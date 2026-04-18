@echo off
title Discord Account Generator - Premium Edition
color 0b
mode con: cols=85 lines=30
chcp 65001 >nul

:menu
cls
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                  DISCORD ACCOUNT GENERATOR - PREMIUM                 ║
echo ║                     Version 3.4.2 - Build 2418                       ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo   Status: ^< ONLINE ^>          Servidores: 12/12          Rate Limit: BYPASSED
echo.
echo   [1] Gerar Contas Discord
echo   [2] Sair do Gerador
echo.
echo ════════════════════════════════════════════════════════════════════════
echo.
set /p opcao="   Escolha uma opção [1-2]: "

if "%opcao%"=="1" goto gerar
if "%opcao%"=="2" goto sair

echo.
echo   [!] Opção inválida! Tente novamente.
ping localhost -n 2 >nul
goto menu

:gerar
cls
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                     INICIANDO GERAÇÃO DE CONTAS                      ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.

set /p quantidade="   Quantas contas você deseja gerar? (máx. 500): "

if "%quantidade%"=="" set quantidade=50
if %quantidade% gtr 500 set quantidade=500
if %quantidade% lss 1 set quantidade=1

echo.
echo   [!] Iniciando geração de %quantidade% contas Discord...
echo   [!] Usando proxies residenciais + Anti-Detect...
ping localhost -n 3 >nul

cls
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                     GERANDO CONTAS DISCORD...                        ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo   Progresso: 0%% completado
echo.

set /a count=0
set /a delay=1

:loop
set /a count+=1
set /a percent=(count*100)/quantidade

echo   [%count%/%quantidade%] Criando conta ^#%count%... ^(%percent%%^%)
ping localhost -n %delay% >nul

if %count%==5 echo   [INFO] Conectando ao solver de CAPTCHA...
if %count%==12 echo   [INFO] Aplicando bypass de verificação por telefone...
if %count%==25 echo   [INFO] Usando tokens de alto nível...
if %count%==40 echo   [INFO] Rotacionando proxies residenciais...
if %count%==%quantidade% goto final

if %percent% geq 30 if %delay%==1 set /a delay=0
goto loop

:final
cls
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                     GERAÇÃO CONCLUÍDA COM SUCESSO!                   ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo   Total de contas geradas: %quantidade%
echo   Status: Todas as contas criadas com sucesso!
echo   Arquivo salvo em: contas_discord_%date:~10,4%%date:~4,2%%date:~7,2%.txt
echo.
echo   Pressione qualquer tecla para visualizar o resultado final...
pause >nul

:: Abre a imagem do Tung Tung Sahur
echo.
echo   [FINAL] Abrindo resultado...
start "" "https://i.imgur.com/QDBz5xM.png"

echo.
echo   Obrigado por usar o Discord Account Generator Premium!
echo   Volte sempre :)
echo.
pause
goto menu

:sair
cls
echo.
echo   Saindo do Discord Account Generator...
echo   Até a próxima!
ping localhost -n 3 >nul
exit
