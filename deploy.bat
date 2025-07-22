@echo off
echo ========================================
echo   VA Recruitment Website Deployment
echo ========================================
echo.

echo Checking files...
if exist "index.html" (
    echo ✓ index.html found
) else (
    echo ✗ index.html missing
    pause
    exit /b 1
)

if exist "styles.css" (
    echo ✓ styles.css found
) else (
    echo ✗ styles.css missing
    pause
    exit /b 1
)

if exist "script.js" (
    echo ✓ script.js found
) else (
    echo ✗ script.js missing
    pause
    exit /b 1
)

echo.
echo All files present! Your website is ready to deploy.
echo.
echo Deployment Options:
echo 1. Netlify (Recommended - Free)
echo    - Go to netlify.com
echo    - Drag this folder to deploy
echo.
echo 2. GitHub Pages (Free)
echo    - Upload to GitHub repository
echo    - Enable Pages in settings
echo.
echo 3. Vercel (Free)
echo    - Go to vercel.com
echo    - Import this folder
echo.
echo 4. Traditional Hosting
echo    - Upload files to public_html folder
echo.
echo Press any key to open deployment guide...
pause >nul
start deployment-guide.md 