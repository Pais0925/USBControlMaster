@echo off
cd /d "%~dp0"
echo ========================================
echo USB Control Master V3
 echo Database: master.db
 echo Address : http://0.0.0.0:8000
 echo ========================================
py -3.13 -m uvicorn server:app --host 0.0.0.0 --port 8000
pause
