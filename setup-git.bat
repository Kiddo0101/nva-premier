@echo off
echo ========================================
echo   Git & GitHub Setup Helper
echo ========================================
echo.

echo This will help you set up Git and deploy to GitHub Pages.
echo.

echo Step 1: Check if Git is installed...
git --version >nul 2>&1
if %errorlevel% == 0 (
    echo ✓ Git is installed
) else (
    echo ✗ Git is not installed
    echo.
    echo Please install Git from: https://git-scm.com
    echo Then run this script again.
    echo.
    pause
    exit /b 1
)

echo.
echo Step 2: Check if you have a GitHub account...
echo.
echo Do you have a GitHub account?
echo 1. Yes, I have an account
echo 2. No, I need to create one
echo 3. Exit
echo.
set /p github_choice="Enter your choice (1-3): "

if "%github_choice%"=="1" goto has_account
if "%github_choice%"=="2" goto create_account
if "%github_choice%"=="3" goto exit

:has_account
echo.
echo ========================================
echo   GitHub Repository Setup
echo ========================================
echo.
echo Follow these steps to create your repository:
echo.
echo 1. Go to https://github.com and sign in
echo 2. Click the "+" icon in the top right
echo 3. Select "New repository"
echo 4. Name it: va-recruitment-website
echo 5. Make it PUBLIC (required for free GitHub Pages)
echo 6. DON'T initialize with README (we have files)
echo 7. Click "Create repository"
echo.
echo After creating the repository, you'll get a URL like:
echo https://github.com/yourusername/va-recruitment-website
echo.
echo Copy that URL and paste it below:
echo.
set /p repo_url="Repository URL: "

if "%repo_url%"=="" (
    echo Please enter a valid repository URL.
    pause
    goto has_account
)

echo.
echo ========================================
echo   Setting up Git Repository
echo ========================================
echo.

echo Initializing Git repository...
git init

echo Adding all files...
git add .

echo Making initial commit...
git commit -m "Initial website upload"

echo Adding remote repository...
git remote add origin %repo_url%

echo Pushing to GitHub...
git push -u origin main

if %errorlevel% == 0 (
    echo.
    echo ========================================
    echo   Success! Repository Created
    echo ========================================
    echo.
    echo ✓ Files uploaded to GitHub
    echo.
    echo Next steps:
    echo 1. Go to your repository on GitHub
    echo 2. Click "Settings" tab
    echo 3. Scroll down to "Pages" section
    echo 4. Under "Source", select "Deploy from a branch"
    echo 5. Choose "main" branch
    echo 6. Click "Save"
    echo 7. Wait 1-2 minutes for deployment
    echo.
    echo Your site will be live at:
    echo https://yourusername.github.io/va-recruitment-website
    echo.
    echo Press any key to open the Git deployment guide...
    pause >nul
    start git-deployment-guide.md
) else (
    echo.
    echo ========================================
    echo   Error: Could not push to GitHub
    echo ========================================
    echo.
    echo Possible issues:
    echo 1. Repository URL is incorrect
    echo 2. You're not authenticated with GitHub
    echo 3. Repository doesn't exist
    echo.
    echo Try using GitHub Desktop instead:
    echo https://desktop.github.com
    echo.
    pause
)

goto menu

:create_account
echo.
echo ========================================
echo   Create GitHub Account
echo ========================================
echo.
echo 1. Go to https://github.com
echo 2. Click "Sign up"
echo 3. Enter your email and password
echo 4. Choose a username
echo 5. Verify your email address
echo 6. Complete your profile setup
echo.
echo After creating your account, come back and run this script again.
echo.
echo Press any key to open GitHub...
pause >nul
start https://github.com
goto menu

:menu
echo.
echo ========================================
echo   What would you like to do next?
echo ========================================
echo.
echo 1. Set up GitHub Desktop (easier for beginners)
echo 2. Learn Git commands
echo 3. Open deployment guide
echo 4. Exit
echo.
set /p next="Enter your choice (1-4): "

if "%next%"=="1" goto github_desktop
if "%next%"=="2" goto git_commands
if "%next%"=="3" goto guide
if "%next%"=="4" goto exit

:github_desktop
echo.
echo ========================================
echo   GitHub Desktop Setup
echo ========================================
echo.
echo GitHub Desktop makes Git easier to use:
echo.
echo 1. Download from: https://desktop.github.com
echo 2. Install and sign in with your GitHub account
echo 3. Clone your repository to your computer
echo 4. Edit files in your preferred editor
echo 5. Commit and push changes through GitHub Desktop
echo.
echo Press any key to download GitHub Desktop...
pause >nul
start https://desktop.github.com
goto menu

:git_commands
echo.
echo ========================================
echo   Common Git Commands
echo ========================================
echo.
echo Basic commands you'll use:
echo.
echo git status          - Check repository status
echo git add .           - Add all changed files
echo git commit -m "msg" - Save changes with message
echo git push            - Upload changes to GitHub
echo git pull            - Download latest changes
echo.
echo Press any key to open Git deployment guide...
pause >nul
start git-deployment-guide.md
goto menu

:guide
echo.
echo Opening Git deployment guide...
start git-deployment-guide.md
goto menu

:exit
echo.
echo Thank you for using the Git Setup Helper!
echo Remember to enable GitHub Pages in your repository settings.
echo.
pause
exit 