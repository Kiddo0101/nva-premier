@echo off
echo ========================================
echo   GitHub Pages Troubleshooting
echo ========================================
echo.
echo Username: kiddo0101
echo Repository: VAconnectpro
echo Expected URL: https://kiddo0101.github.io/VAconnectpro
echo.

echo Checking common issues...
echo.

echo 1. Repository Visibility Check:
echo    - Your repository must be PUBLIC for free GitHub Pages
echo    - Go to your repository settings
echo    - Scroll down to "Danger Zone"
echo    - Make sure it says "Change repository visibility"
echo    - If it's private, change it to public
echo.

echo 2. GitHub Pages Settings Check:
echo    - Go to repository Settings tab
echo    - Scroll down to "Pages" section
echo    - Source should be "Deploy from a branch"
echo    - Branch should be "main" or "master"
echo    - Click "Save" if you make changes
echo.

echo 3. File Structure Check:
echo    Your repository should have these files:
echo    - index.html (main page)
echo    - styles.css (styling)
echo    - script.js (functionality)
echo.

echo 4. Deployment Time:
echo    - GitHub Pages can take 1-5 minutes to deploy
echo    - Check the "Actions" tab for deployment status
echo    - Look for green checkmark indicating success
echo.

echo 5. URL Format:
echo    - Correct: https://kiddo0101.github.io/VAconnectpro
echo    - Note: Case sensitive, no spaces
echo.

echo Press any key to open your repository...
pause >nul
start https://github.com/kiddo0101/VAconnectpro

echo.
echo ========================================
echo   Quick Fix Steps
echo ========================================
echo.
echo Step 1: Check if repository is public
echo Step 2: Enable GitHub Pages in Settings
echo Step 3: Wait 2-5 minutes for deployment
echo Step 4: Try the URL again
echo.

echo Would you like to:
echo 1. Open repository settings
echo 2. Open GitHub Pages settings
echo 3. Check repository files
echo 4. Exit
echo.

set /p choice="Enter your choice (1-4): "

if "%choice%"=="1" goto settings
if "%choice%"=="2" goto pages
if "%choice%"=="3" goto files
if "%choice%"=="4" goto exit

:settings
echo.
echo Opening repository settings...
start https://github.com/kiddo0101/VAconnectpro/settings
goto menu

:pages
echo.
echo Opening GitHub Pages settings...
start https://github.com/kiddo0101/VAconnectpro/settings/pages
goto menu

:files
echo.
echo Opening repository files...
start https://github.com/kiddo0101/VAconnectpro
goto menu

:menu
echo.
echo ========================================
echo   Additional Help
echo ========================================
echo.
echo Common Issues and Solutions:
echo.
echo Issue: "404 Site not found"
echo Solution: 
echo - Make sure repository is PUBLIC
echo - Enable GitHub Pages in Settings
echo - Wait 2-5 minutes for deployment
echo.
echo Issue: "Repository not found"
echo Solution:
echo - Check repository name spelling
echo - Make sure repository exists
echo - Check if you have access
echo.
echo Issue: "Files not showing"
echo Solution:
echo - Make sure index.html is in root folder
echo - Check file names (case sensitive)
echo - Clear browser cache (Ctrl+F5)
echo.

echo Press any key to test your site URL...
pause >nul
start https://kiddo0101.github.io/VAconnectpro

echo.
echo If the site still doesn't work, try:
echo 1. Wait 5 more minutes
echo 2. Check the Actions tab for errors
echo 3. Make sure all files are uploaded
echo 4. Contact GitHub support
echo.

pause
goto exit

:exit
echo.
echo ========================================
echo   Summary
echo ========================================
echo.
echo Your expected site URL:
echo https://kiddo0101.github.io/VAconnectpro
echo.
echo If it's still not working:
echo 1. Repository must be PUBLIC
echo 2. GitHub Pages must be ENABLED
echo 3. Wait 2-5 minutes for deployment
echo 4. Check for any error messages
echo.
echo Press any key to exit...
pause >nul
exit 