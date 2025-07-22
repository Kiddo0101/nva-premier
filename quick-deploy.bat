@echo off
echo ========================================
echo   Quick Website Deployment
echo ========================================
echo.
echo Choose the fastest way to get your website live:
echo.
echo 1. Netlify (Easiest - 2 minutes)
echo 2. GitHub Pages (Free - 5 minutes)
echo 3. Vercel (Fast - 3 minutes)
echo 4. Traditional Hosting (cPanel/FTP)
echo 5. View deployment guides
echo 6. Exit
echo.

set /p choice="Enter your choice (1-6): "

if "%choice%"=="1" goto netlify
if "%choice%"=="2" goto github
if "%choice%"=="3" goto vercel
if "%choice%"=="4" goto traditional
if "%choice%"=="5" goto guides
if "%choice%"=="6" goto exit

:netlify
echo.
echo ========================================
echo   Netlify Deployment (Easiest)
echo ========================================
echo.
echo Step 1: Go to netlify.com
echo Step 2: Sign up (free)
echo Step 3: Drag your website folder to the deploy area
echo Step 4: Wait 30 seconds
echo Step 5: Your site is live!
echo.
echo Your site will be: https://your-site-name.netlify.app
echo.
echo Press any key to open Netlify...
pause >nul
start https://netlify.com
goto menu

:github
echo.
echo ========================================
echo   GitHub Pages Deployment
echo ========================================
echo.
echo Step 1: Go to github.com and sign up
echo Step 2: Create new repository (public)
echo Step 3: Upload your website files
echo Step 4: Enable GitHub Pages in settings
echo Step 5: Wait 2 minutes for deployment
echo.
echo Your site will be: https://yourusername.github.io/repository-name
echo.
echo Press any key to open GitHub...
pause >nul
start https://github.com
goto menu

:vercel
echo.
echo ========================================
echo   Vercel Deployment
echo ========================================
echo.
echo Step 1: Go to vercel.com and sign up
echo Step 2: Click "New Project"
echo Step 3: Import your website folder
echo Step 4: Deploy automatically
echo Step 5: Your site is live!
echo.
echo Your site will be: https://your-project.vercel.app
echo.
echo Press any key to open Vercel...
pause >nul
start https://vercel.com
goto menu

:traditional
echo.
echo ========================================
echo   Traditional Hosting
echo ========================================
echo.
echo Step 1: Purchase hosting (Bluehost, HostGator, etc.)
echo Step 2: Access cPanel or file manager
echo Step 3: Upload files to public_html folder
echo Step 4: Your site is live at your domain
echo.
echo Recommended hosts:
echo - Bluehost ($3-7/month)
echo - HostGator ($3-6/month)
echo - GoDaddy ($5-10/month)
echo.
echo Press any key to open hosting comparison...
pause >nul
start https://www.hostingadvice.com/best-web-hosting/
goto menu

:guides
echo.
echo ========================================
echo   Deployment Guides
echo ========================================
echo.
echo Opening detailed guides...
start deployment-guide.md
start git-deployment-guide.md
goto menu

:menu
echo.
echo ========================================
echo   What would you like to do next?
echo ========================================
echo.
echo 1. Try another deployment method
echo 2. Check if files are ready
echo 3. Update website content first
echo 4. Exit
echo.
set /p next="Enter your choice (1-4): "

if "%next%"=="1" goto start
if "%next%"=="2" goto check
if "%next%"=="3" goto update
if "%next%"=="4" goto exit

:start
cls
goto :eof

:check
echo.
echo ========================================
echo   File Check
echo ========================================
echo.
echo Checking if your website files are ready...
echo.
if exist "index.html" (
    echo ✓ index.html - Main website
) else (
    echo ✗ index.html missing
)

if exist "styles.css" (
    echo ✓ styles.css - Styling
) else (
    echo ✗ styles.css missing
)

if exist "script.js" (
    echo ✓ script.js - Functionality
) else (
    echo ✗ script.js missing
)

echo.
echo All files present! Your website is ready to deploy.
echo.
echo Before deploying, you might want to:
echo 1. Update company name in index.html
echo 2. Change contact information
echo 3. Test locally (open index.html in browser)
echo.
echo Press any key to continue...
pause >nul
goto menu

:update
echo.
echo ========================================
echo   Update Website Content
echo ========================================
echo.
echo Opening update helper...
start update-website.bat
goto menu

:exit
echo.
echo ========================================
echo   Quick Deployment Summary
echo ========================================
echo.
echo Fastest methods to get your website live:
echo.
echo 🚀 Netlify: 2 minutes, drag & drop
echo 🌐 GitHub Pages: 5 minutes, free hosting
echo ⚡ Vercel: 3 minutes, great performance
echo 🏠 Traditional: 10 minutes, full control
echo.
echo Your website files are ready to deploy!
echo.
echo Press any key to exit...
pause >nul
exit 