@echo off
echo 🚀 Memulai setup Git Portfolio...

REM Hapus folder .git jika sudah ada
if exist ".git" (
    rmdir /s /q .git
    echo 🗑️  Menghapus repository Git lama...
)

REM Inisialisasi Git repository
git init
echo ✅ Git repository diinisialisasi

REM Setup user config (ganti dengan data Anda)
git config user.name "Portfolio Developer"
git config user.email "portfolio@example.com"

REM Buat file style.css
echo * { > style.css
echo     margin: 0; >> style.css
echo     padding: 0; >> style.css
echo     box-sizing: border-box; >> style.css
echo } >> style.css
echo. >> style.css
echo body { >> style.css
echo     font-family: Arial, sans-serif; >> style.css
echo     line-height: 1.6; >> style.css
echo     color: #333; >> style.css
echo     background: #f4f4f4; >> style.css
echo } >> style.css
echo. >> style.css
echo .container { >> style.css
echo     max-width: 1200px; >> style.css
echo     margin: 0 auto; >> style.css
echo     padding: 20px; >> style.css
echo } >> style.css
echo. >> style.css
echo header { >> style.css
echo     text-align: center; >> style.css
echo     padding: 40px 0; >> style.css
echo     background: linear-gradient(135deg, #667eea 0%%, #764ba2 100%%); >> style.css
echo     color: white; >> style.css
echo     border-radius: 10px; >> style.css
echo     margin-bottom: 30px; >> style.css
echo } >> style.css
echo. >> style.css
echo header h1 { >> style.css
echo     font-size: 2.5em; >> style.css
echo     margin-bottom: 10px; >> style.css
echo } >> style.css
echo. >> style.css
echo nav { >> style.css
echo     background: #f8f9fa; >> style.css
echo     padding: 15px; >> style.css
echo     border-radius: 8px; >> style.css
echo     margin-bottom: 30px; >> style.css
echo } >> style.css
echo. >> style.css
echo nav ul { >> style.css
echo     list-style: none; >> style.css
echo     display: flex; >> style.css
echo     justify-content: center; >> style.css
echo     gap: 30px; >> style.css
echo } >> style.css
echo. >> style.css
echo nav a { >> style.css
echo     text-decoration: none; >> style.css
echo     color: #333; >> style.css
echo     font-weight: bold; >> style.css
echo     padding: 8px 16px; >> style.css
echo     border-radius: 5px; >> style.css
echo     transition: background 0.3s; >> style.css
echo } >> style.css
echo. >> style.css
echo nav a:hover { >> style.css
echo     background: #667eea; >> style.css
echo     color: white; >> style.css
echo } >> style.css
echo. >> style.css
echo section { >> style.css
echo     margin-bottom: 40px; >> style.css
echo     padding: 30px; >> style.css
echo     background: white; >> style.css
echo     border-radius: 10px; >> style.css
echo     box-shadow: 0 2px 10px rgba(0,0,0,0.1); >> style.css
echo } >> style.css
echo. >> style.css
echo section h2 { >> style.css
echo     color: #667eea; >> style.css
echo     margin-bottom: 20px; >> style.css
echo     font-size: 1.8em; >> style.css
echo } >> style.css
echo. >> style.css
echo .project-grid { >> style.css
echo     display: grid; >> style.css
echo     grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); >> style.css
echo     gap: 20px; >> style.css
echo     margin-top: 20px; >> style.css
echo } >> style.css
echo. >> style.css
echo .project-card { >> style.css
echo     background: #f8f9fa; >> style.css
echo     padding: 20px; >> style.css
echo     border-radius: 8px; >> style.css
echo     border-left: 4px solid #667eea; >> style.css
echo } >> style.css
echo. >> style.css
echo .project-card h3 { >> style.css
echo     color: #667eea; >> style.css
echo     margin-bottom: 10px; >> style.css
echo } >> style.css
echo. >> style.css
echo footer { >> style.css
echo     text-align: center; >> style.css
echo     padding: 20px; >> style.css
echo     background: #333; >> style.css
echo     color: white; >> style.css
echo     border-radius: 8px; >> style.css
echo     margin-top: 40px; >> style.css
echo } >> style.css

echo ✅ File style.css dibuat

REM Commit 1: Initial commit
git add .
git commit -m "Initial commit - Portfolio dasar"
echo ✅ Commit 1: Initial commit

REM Update index.html untuk commit 2
powershell -Command "(Get-Content index.html) -replace '<h1>Portfolio Saya</h1>', '<h1>Portfolio Saya - Updated</h1>' | Set-Content index.html"
powershell -Command "(Get-Content index.html) -replace '<p>Web Developer & Designer</p>', '<p>Web Developer & Designer - Professional</p>' | Set-Content index.html"
git add .
git commit -m "Add homepage - Update header portfolio"
echo ✅ Commit 2: Add homepage

REM Update index.html untuk commit 3
powershell -Command "(Get-Content index.html) -replace '<p>Ini adalah portfolio saya yang dibuat dengan Git.</p>', '<p>Ini adalah portfolio saya yang dibuat dengan Git dan terus dikembangkan.</p>' | Set-Content index.html"
git add .
git commit -m "Add navigation - Update deskripsi home"
echo ✅ Commit 3: Add navigation

REM Update index.html untuk commit 4
powershell -Command "(Get-Content index.html) -replace '<p>Saya adalah seorang web developer yang suka belajar hal baru.</p>', '<p>Saya adalah seorang web developer yang suka belajar hal baru dan selalu mengikuti teknologi terbaru.</p>' | Set-Content index.html"
git add .
git commit -m "Add footer - Update about section"
echo ✅ Commit 4: Add footer

REM Buat branch blog dari commit 2
git checkout -b blog HEAD~2
echo ✅ Branch 'blog' dibuat dari commit 2

REM Update untuk blog commit 1
powershell -Command "(Get-Content index.html) -replace '<h2>Projects</h2>', '<h2>Blog Posts</h2>' | Set-Content index.html"
git add .
git commit -m "Create blog page - Tambah halaman blog"
echo ✅ Blog commit 1: Create blog page

REM Update untuk blog commit 2
powershell -Command "(Get-Content index.html) -replace '<h3>Project 1</h3>', '<h3>Artikel Kedua</h3>' | Set-Content index.html"
powershell -Command "(Get-Content index.html) -replace '<p>Deskripsi project pertama</p>', '<p>Artikel tentang teknologi terbaru</p>' | Set-Content index.html"
git add .
git commit -m "Add blog posts - Tambah artikel blog"
echo ✅ Blog commit 2: Add blog posts

REM Update untuk blog commit 3
powershell -Command "(Get-Content index.html) -replace '<h3>Project 2</h3>', '<h3>Artikel Ketiga</h3>' | Set-Content index.html"
powershell -Command "(Get-Content index.html) -replace '<p>Deskripsi project kedua</p>', '<p>Artikel tentang tips programming</p>' | Set-Content index.html"
git add .
git commit -m "Add comments - Tambah artikel ketiga"
echo ✅ Blog commit 3: Add comments

REM Kembali ke main dan buat branch project dari commit 2
git checkout main
git checkout -b project HEAD~2
echo ✅ Branch 'project' dibuat dari commit 2

REM Update untuk project commit 1
powershell -Command "(Get-Content index.html) -replace '<h2>Projects</h2>', '<h2>My Projects</h2>' | Set-Content index.html"
git add .
git commit -m "Create project page - Tambah project e-commerce"
echo ✅ Project commit 1: Create project page

REM Update untuk project commit 2
powershell -Command "(Get-Content index.html) -replace '<h3>Project 1</h3>', '<h3>Mobile App</h3>' | Set-Content index.html"
powershell -Command "(Get-Content index.html) -replace '<p>Deskripsi project pertama</p>', '<p>Aplikasi mobile dengan React Native</p>' | Set-Content index.html"
git add .
git commit -m "Add project gallery - Tambah project mobile app"
echo ✅ Project commit 2: Add project gallery

REM Update untuk project commit 3
powershell -Command "(Get-Content index.html) -replace '<h3>Project 2</h3>', '<h3>Dashboard Admin</h3>' | Set-Content index.html"
powershell -Command "(Get-Content index.html) -replace '<p>Deskripsi project kedua</p>', '<p>Dashboard admin dengan Vue.js dan Laravel</p>' | Set-Content index.html"
git add .
git commit -m "Add project details - Tambah project dashboard"
echo ✅ Project commit 3: Add project details

REM Kembali ke main dan buat branch contact dari commit 4
git checkout main
git checkout -b contact
echo ✅ Branch 'contact' dibuat dari commit 4

REM Update untuk contact commit 1
powershell -Command "(Get-Content index.html) -replace '<h2>Contact</h2>', '<h2>Hubungi Saya</h2>' | Set-Content index.html"
powershell -Command "(Get-Content index.html) -replace '<p>Email: email@example.com</p>', '<p>Email: contact@portfolio.com</p>' | Set-Content index.html"
git add .
git commit -m "Create contact form - Update contact info"
echo ✅ Contact commit 1: Create contact form

REM Update untuk contact commit 2
powershell -Command "(Get-Content index.html) -replace '<p>Phone: +62 123 456 789</p>', '<p>Phone: +62 123 456 789</p><p>Instagram: @portfolio.dev</p>' | Set-Content index.html"
git add .
git commit -m "Add email validation - Tambah social media"
echo ✅ Contact commit 2: Add email validation

REM Kembali ke main
git checkout main
echo ✅ Kembali ke branch main

echo.
echo 🎉 Setup Git Portfolio selesai!
echo.
echo 📋 Struktur yang dibuat:
echo    main: 4 commits (Initial → Homepage → Navigation → Footer)
echo    blog: 3 commits (dari commit 2 main)
echo    project: 3 commits (dari commit 2 main)
echo    contact: 2 commits (dari commit 4 main)
echo.
echo 🔧 Commands yang bisa digunakan:
echo    git log --oneline --graph --all
echo    git checkout blog
echo    git checkout project
echo    git checkout contact
echo    git checkout main
echo.
echo 🌐 Buka index.html di browser untuk melihat hasilnya!
pause
