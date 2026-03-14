@echo off
echo ========================================
echo   SERVIDOR RASA - Crack MEVM
echo ========================================
echo.
echo Iniciando servidor Rasa...
echo IMPORTANTE: NO CIERRES ESTA VENTANA
echo.
echo Abre index.html en tu navegador cuando veas "Rasa server is up and running"
echo.

call venv\Scripts\activate.bat
rasa run --enable-api --cors "*"

pause
