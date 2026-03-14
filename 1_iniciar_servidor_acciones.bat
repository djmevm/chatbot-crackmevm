@echo off
echo ========================================
echo   SERVIDOR DE ACCIONES - Crack MEVM
echo ========================================
echo.
echo Iniciando servidor de acciones...
echo IMPORTANTE: NO CIERRES ESTA VENTANA
echo.

call venv\Scripts\activate.bat
rasa run actions

pause
