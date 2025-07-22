@echo off
echo ========================================
echo   Website Update Helper
echo ========================================
echo.

echo What would you like to update?
echo.
echo 1. Company Information (name, contact, etc.)
echo 2. Colors/Theme
echo 3. Services
echo 4. Job Listings
echo 5. Content/Text
echo 6. Check files before deployment
echo 7. Open update guide
echo 8. Exit
echo.

set /p choice="Enter your choice (1-8): "

if "%choice%"=="1" goto company
if "%choice%"=="2" goto colors
if "%choice%"=="3" goto services
if "%choice%"=="4" goto jobs
if "%choice%"=="5" goto content
if "%choice%"=="6" goto check
if "%choice%"=="7" goto guide
if "%choice%"=="8" goto exit

:company
echo.
echo ========================================
echo   Company Information Update
echo ========================================
echo.
echo Open index.html and update these items:
echo.
echo 1. Company name: "VA Connect Pro"
echo 2. Email: "info@vaconnectpro.com"
echo 3. Phone: "+1 (555) 123-4567"
echo 4. Address: "123 Business Ave, Suite 100"
echo 5. Social media links
echo.
echo Press any key to open index.html...
pause >nul
start index.html
goto menu

:colors
echo.
echo ========================================
echo   Colors/Theme Update
echo ========================================
echo.
echo Open styles.css and update these colors:
echo.
echo Primary Blue: #2563eb
echo Gradient: #667eea to #764ba2
echo Text Dark: #1f2937
echo Text Medium: #6b7280
echo.
echo Press any key to open styles.css...
pause >nul
start styles.css
goto menu

:services
echo.
echo ========================================
echo   Services Update
echo ========================================
echo.
echo Open index.html and find the services section.
echo Update:
echo - Service titles
echo - Service descriptions
echo - Service icons (FontAwesome classes)
echo.
echo Press any key to open index.html...
pause >nul
start index.html
goto menu

:jobs
echo.
echo ========================================
echo   Job Listings Update
echo ========================================
echo.
echo Open index.html and find the jobs section.
echo Update:
echo - Job titles
echo - Job descriptions
echo - Requirements (tags)
echo - Application links
echo.
echo Press any key to open index.html...
pause >nul
start index.html
goto menu

:content
echo.
echo ========================================
echo   Content/Text Update
echo ========================================
echo.
echo Open index.html to update:
echo - Hero section text
echo - About section
echo - Testimonials
echo - Footer content
echo.
echo Press any key to open index.html...
pause >nul
start index.html
goto menu

:check
echo.
echo ========================================
echo   File Check Before Deployment
echo ========================================
echo.
echo Checking files...
if exist "index.html" (
    echo ✓ index.html found
) else (
    echo ✗ index.html missing
)

if exist "styles.css" (
    echo ✓ styles.css found
) else (
    echo ✗ styles.css missing
)

if exist "script.js" (
    echo ✓ script.js found
) else (
    echo ✗ script.js missing
)

echo.
echo ========================================
echo   Deployment Reminder
echo ========================================
echo.
echo After making changes:
echo.
echo 1. Save all files
echo 2. Test locally (open index.html in browser)
echo 3. Deploy to your hosting platform:
echo    - Netlify: Drag folder to deploy area
echo    - GitHub: Commit and push changes
echo    - Vercel: Push to connected repository
echo    - Traditional: Upload via FTP/cPanel
echo.
echo Press any key to continue...
pause >nul
goto menu

:guide
echo.
echo Opening update guide...
start update-guide.md
goto menu

:menu
echo.
echo ========================================
echo   What would you like to do next?
echo ========================================
echo.
echo 1. Make another update
echo 2. Check files before deployment
echo 3. Open deployment guide
echo 4. Exit
echo.
set /p next="Enter your choice (1-4): "

if "%next%"=="1" goto start
if "%next%"=="2" goto check
if "%next%"=="3" goto guide
if "%next%"=="4" goto exit

:start
cls
goto :eof

:exit
echo.
echo Thank you for using the Website Update Helper!
echo Remember to test your changes before deploying.
echo.
pause
exit 