@echo off
setlocal
cd /d "%~dp0"
echo.
echo === USB Control Agent V8 Build ===
echo Project folder: %CD%
echo.
py -3.13 -m pip install -r "%~dp0requirements.txt"
if errorlevel 1 goto :error
py -3.13 -m pip install pyinstaller
if errorlevel 1 goto :error
py -3.13 -m PyInstaller --clean --onefile --name USBControlAgent --hidden-import=win32timezone "%~dp0USBControlAgent.py"
if errorlevel 1 goto :error
echo.
echo BUILD SELESAI.
echo EXE: %~dp0dist\USBControlAgent.exe
pause
exit /b 0
:error
echo.
echo BUILD GAGAL. Lihat pesan error di atas.
pause
exit /b 1
