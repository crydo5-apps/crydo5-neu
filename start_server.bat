@echo off
title Crydo5-Casino Dev Server
cd /d "%~dp0"
echo ============================================
echo   Crydo5-Casino Demo-Server
echo   Oeffne: http://localhost:8080
echo   Beenden: Fenster schliessen oder Ctrl+C
echo ============================================
set PATH=%~dp0;%PATH%
npm run dev
pause