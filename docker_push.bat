@echo off
echo ========================================
echo  Docker Tag and Push to Docker Hub
echo ========================================

echo.
echo [1/2] Tagging image as theekshanathushan/flask-app:v1...
"C:\Program Files\Docker\Docker\resources\bin\docker.exe" tag flask-app:v1 theekshanathushan/flask-app:v1

echo.
echo [2/2] Pushing image to Docker Hub...
"C:\Program Files\Docker\Docker\resources\bin\docker.exe" push theekshanathushan/flask-app:v1

echo.
echo ========================================
echo  Push Completed!
echo ========================================
pause
