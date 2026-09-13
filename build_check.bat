@echo off
title Crydo5-Casino Build & Typecheck
cd /d "%~dp0"
set PATH=%~dp0;%PATH%
echo --- TYPECHECK ---
node node_modules/typescript/bin/tsc --noEmit
if %errorlevel% neq 0 (
  echo TYPECHECK FAILED
  pause
  exit /b %errorlevel%
)
echo --- BUILD ---
node scripts/with-app-env.mjs vite build
if %errorlevel% neq 0 (
  echo BUILD FAILED
  pause
  exit /b %errorlevel%
)
echo ALL DONE
pause