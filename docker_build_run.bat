@echo off
echo ========================================
echo  Docker Build and Run - Flask App
echo ========================================

cd /d "c:\Users\User\OneDrive - NSBM\Documents\Mobile develpment\devops-practical"

echo.
echo [1/3] Building Docker image...
"C:\Program Files\Docker\Docker\resources\bin\docker.exe" build -t flask-app:v1 .

echo.
echo [2/3] Removing old container if exists...
"C:\Program Files\Docker\Docker\resources\bin\docker.exe" rm -f flask-test 2>nul

echo.
echo [3/3] Running container on port 5000...
"C:\Program Files\Docker\Docker\resources\bin\docker.exe" run -d -p 5000:5000 --name flask-test flask-app:v1

echo.
echo ========================================
echo  Done! Open: http://localhost:5000
echo ========================================
pause
