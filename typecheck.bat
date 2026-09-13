@echo off
title Crydo5-Casino Typecheck
cd /d "%~dp0"
set PATH=%~dp0;%PATH%
node node_modules/typescript/bin/tsc --noEmit
pause