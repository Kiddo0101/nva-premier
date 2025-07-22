# 🚀 Git & GitHub Deployment Guide

## Quick Start: Deploy to GitHub Pages (FREE)

### **Step 1: Create GitHub Account**
1. Go to [github.com](https://github.com) and sign up
2. Verify your email address
3. Complete your profile setup

### **Step 2: Create New Repository**
1. Click the **"+"** icon in the top right
2. Select **"New repository"**
3. Name it: `va-recruitment-website` (or your preferred name)
4. Make it **Public** (required for free GitHub Pages)
5. **Don't** initialize with README (we already have files)
6. Click **"Create repository"**

### **Step 3: Upload Your Files**
1. **Drag and drop** your website files to the repository:
   - `index.html`
   - `styles.css`
   - `script.js`
   - `README.md`
   - Other files (optional)

2. **Add commit message**: "Initial website upload"
3. Click **"Commit changes"**

### **Step 4: Enable GitHub Pages**
1. Go to **Settings** tab in your repository
2. Scroll down to **"Pages"** section
3. Under **"Source"**, select **"Deploy from a branch"**
4. Choose **"main"** branch
5. Click **"Save"**
6. Wait 1-2 minutes for deployment

### **Step 5: Your Site is Live!**
- Your site will be available at: `https://yourusername.github.io/va-recruitment-website`
- GitHub will show the URL in the Pages section

---

## 🛠️ Using Git Commands (Advanced)

### **Prerequisites:**
1. **Install Git**: Download from [git-scm.com](https://git-scm.com)
2. **Install GitHub Desktop** (optional, but easier): [desktop.github.com](https://desktop.github.com)

### **Method 1: GitHub Desktop (Recommended for Beginners)**

#### **Setup:**
1. **Download and install** GitHub Desktop
2. **Sign in** with your GitHub account
3. **Clone repository** or create new one

#### **Upload Process:**
1. **Add files** to your local repository folder
2. **Commit changes** with a message
3. **Push to GitHub**
4. **Site updates automatically**

#### **Update Process:**
1. **Edit files** in your preferred editor
2. **Commit changes** in GitHub Desktop
3. **Push to GitHub**
4. **Site updates in 1-2 minutes**

### **Method 2: Command Line Git**

#### **Initial Setup:**
```bash
# Navigate to your website folder
cd "path/to/your/website"

# Initialize Git repository
git init

# Add all files
git add .

# Make first commit
git commit -m "Initial website upload"

# Add GitHub repository as remote
git remote add origin https://github.com/yourusername/va-recruitment-website.git

# Push to GitHub
git push -u origin main
```

#### **Update Process:**
```bash
# Make changes to your files
# Then run these commands:

git add .
git commit -m "Update website content"
git push
```

---

## 📁 Repository Structure

Your GitHub repository should look like this:
```
va-recruitment-website/
├── index.html          # Main website
├── styles.css          # Styling
├── script.js           # Functionality
├── README.md           # Documentation
├── deployment-guide.md # Deployment instructions
├── update-guide.md     # Update instructions
├── package.json        # For modern platforms
├── vercel.json         # Vercel configuration
├── netlify.toml        # Netlify configuration
└── .gitignore          # Git ignore file (optional)
```

---

## 🔄 Updating Your Website

### **Option 1: Edit in GitHub (Quick Changes)**
1. **Go to your repository** on GitHub
2. **Click on the file** you want to edit (e.g., `index.html`)
3. **Click the pencil icon** (Edit)
4. **Make your changes**
5. **Scroll down** and click **"Commit changes"**
6. **Wait 1-2 minutes** for deployment

### **Option 2: Edit Locally (Recommended)**
1. **Clone repository** to your computer
2. **Edit files** in your preferred editor
3. **Commit and push** changes
4. **Site updates automatically**

### **Option 3: GitHub Desktop**
1. **Open GitHub Desktop**
2. **Make changes** to files
3. **Commit changes** with message
4. **Push to GitHub**
5. **Site updates automatically**

---

## 🎯 Common Git Commands

### **Basic Commands:**
```bash
# Check status
git status

# Add files
git add filename.html
git add .  # Add all files

# Commit changes
git commit -m "Your commit message"

# Push to GitHub
git push

# Pull latest changes
git pull

# Check repository info
git remote -v
```

### **Useful Commands:**
```bash
# See commit history
git log

# See changes in a file
git diff filename.html

# Create new branch
git checkout -b new-feature

# Switch branches
git checkout main

# Merge changes
git merge new-feature
```

---

## 🔧 Troubleshooting

### **Repository Not Found:**
- Check repository name and URL
- Ensure repository is public (for free GitHub Pages)
- Verify you have access permissions

### **Files Not Uploading:**
- Check file size (GitHub has limits)
- Ensure files are not in `.gitignore`
- Try uploading one file at a time

### **Site Not Updating:**
- Wait 1-2 minutes for deployment
- Check GitHub Pages settings
- Clear browser cache (Ctrl+F5)
- Check repository for errors

### **Git Authentication Issues:**
- Use GitHub Desktop for easier authentication
- Set up SSH keys for command line
- Use Personal Access Tokens

---

## 🚀 Advanced Features

### **Custom Domain Setup:**
1. **Purchase domain** (GoDaddy, Namecheap, etc.)
2. **Add CNAME record** pointing to `yourusername.github.io`
3. **Add custom domain** in GitHub Pages settings
4. **Wait for DNS propagation** (up to 24 hours)

### **Automatic Deployment:**
- **Netlify**: Connect GitHub repository for auto-deploy
- **Vercel**: Import GitHub repository for auto-deploy
- **GitHub Actions**: Set up custom deployment workflows

### **Multiple Branches:**
- **main**: Live website
- **develop**: Development/testing
- **feature**: New features

---

## 📊 GitHub Pages Benefits

### **Free Features:**
- ✅ **Free hosting** for public repositories
- ✅ **Custom domains** support
- ✅ **SSL certificates** automatically
- ✅ **Version control** for all changes
- ✅ **Collaboration** with team members
- ✅ **Issue tracking** for bugs/features
- ✅ **Project management** tools

### **Limitations:**
- ❌ **Public repositories only** (for free tier)
- ❌ **No server-side processing**
- ❌ **Limited bandwidth** for high traffic
- ❌ **No database** support

---

## 🎯 Best Practices

### **Repository Management:**
1. **Use descriptive commit messages**
2. **Keep repository organized**
3. **Use branches for major changes**
4. **Regular backups** of your local files

### **Content Updates:**
1. **Test changes locally** before pushing
2. **Use meaningful commit messages**
3. **Update README** when adding features
4. **Keep documentation current**

### **Security:**
1. **Don't commit sensitive information**
2. **Use .gitignore** for unnecessary files
3. **Review changes** before committing
4. **Keep dependencies updated**

---

## 📞 Getting Help

### **GitHub Resources:**
- **GitHub Help**: [help.github.com](https://help.github.com)
- **GitHub Pages**: [pages.github.com](https://pages.github.com)
- **Git Documentation**: [git-scm.com/doc](https://git-scm.com/doc)

### **Community Support:**
- **GitHub Community**: [github.community](https://github.community)
- **Stack Overflow**: [stackoverflow.com](https://stackoverflow.com)
- **Reddit**: r/github, r/webdev

---

## 🎉 Success Checklist

- ✅ GitHub account created
- ✅ Repository created and public
- ✅ Website files uploaded
- ✅ GitHub Pages enabled
- ✅ Site accessible at GitHub Pages URL
- ✅ Custom domain configured (optional)
- ✅ Local development environment set up
- ✅ Update workflow established

---

**Your website is now live and easily updatable!** 🚀 