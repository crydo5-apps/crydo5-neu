@echo off
title Crydo5-Casino Dev Server
cd /d "%~dp0"
echo ============================================
echo   Crydo5-Casino Demo-Server
echo   Oeffne: http://localhost:8080
echo   Beenden: Fenster schliessen oder Ctrl+C
echo ============================================
set PATH=%~dp0;%PATH%
set PATH=%~dp0node_modules\.bin;%PATH%
start /b node scripts/with-app-env.mjs vite dev --host 0.0.0.0 --port 8080
echo Server gestartet unter http://localhost:8080