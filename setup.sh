#!/bin/bash

echo "🚀 Memulai setup Git Portfolio..."

# Hapus folder .git jika sudah ada
if [ -d ".git" ]; then
    rm -rf .git
    echo "🗑️  Menghapus repository Git lama..."
fi

# Inisialisasi Git repository
git init
echo "✅ Git repository diinisialisasi"

# Setup user config (ganti dengan data Anda)
git config user.name "Portfolio Developer"
git config user.email "portfolio@example.com"

# Buat file style.css
cat > style.css << 'EOF'
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    color: #333;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
}

header {
    text-align: center;
    padding: 40px 0;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
    border-radius: 10px;
    margin-bottom: 30px;
}

header h1 {
    font-size: 2.5em;
    margin-bottom: 10px;
}

nav {
    background: #f8f9fa;
    padding: 15px;
    border-radius: 8px;
    margin-bottom: 30px;
}

nav ul {
    list-style: none;
    display: flex;
    justify-content: center;
    gap: 30px;
}

nav a {
    text-decoration: none;
    color: #333;
    font-weight: bold;
    padding: 8px 16px;
    border-radius: 5px;
    transition: background 0.3s;
}

nav a:hover {
    background: #667eea;
    color: white;
}

section {
    margin-bottom: 40px;
    padding: 30px;
    background: white;
    border-radius: 10px;
    box-shadow: 0 2px 10px rgba(0,0,0,0.1);
}

section h2 {
    color: #667eea;
    margin-bottom: 20px;
    font-size: 1.8em;
}

.project-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 20px;
    margin-top: 20px;
}

.project-card {
    background: #f8f9fa;
    padding: 20px;
    border-radius: 8px;
    border-left: 4px solid #667eea;
}

.project-card h3 {
    color: #667eea;
    margin-bottom: 10px;
}

footer {
    text-align: center;
    padding: 20px;
    background: #333;
    color: white;
    border-radius: 8px;
    margin-top: 40px;
}
EOF

echo "✅ File style.css dibuat"

# Commit 1: Initial commit
git add .
git commit -m "Initial commit - Portfolio dasar"
echo "✅ Commit 1: Initial commit"

# Update index.html untuk commit 2
sed -i 's/<h1>Portfolio Saya<\/h1>/<h1>Portfolio Saya - Updated<\/h1>/' index.html
sed -i 's/<p>Web Developer & Designer<\/p>/<p>Web Developer & Designer - Professional<\/p>/' index.html
git add .
git commit -m "Add homepage - Update header portfolio"
echo "✅ Commit 2: Add homepage"

# Update index.html untuk commit 3
sed -i 's/<p>Ini adalah portfolio saya yang dibuat dengan Git.<\/p>/<p>Ini adalah portfolio saya yang dibuat dengan Git dan terus dikembangkan.<\/p>/' index.html
git add .
git commit -m "Add navigation - Update deskripsi home"
echo "✅ Commit 3: Add navigation"

# Update index.html untuk commit 4
sed -i 's/<p>Saya adalah seorang web developer yang suka belajar hal baru.<\/p>/<p>Saya adalah seorang web developer yang suka belajar hal baru dan selalu mengikuti teknologi terbaru.<\/p>/' index.html
git add .
git commit -m "Add footer - Update about section"
echo "✅ Commit 4: Add footer"

# Buat branch blog dari commit 2
git checkout -b blog HEAD~2
echo "✅ Branch 'blog' dibuat dari commit 2"

# Update untuk blog commit 1
sed -i 's/<h2>Projects<\/h2>/<h2>Blog Posts<\/h2>/' index.html
sed -i 's/<div class="project-grid">/<div class="project-grid">\n                    <div class="project-card">\n                        <h3>Artikel Pertama<\/h3>\n                        <p>Ini adalah artikel blog pertama saya<\/p>\n                    <\/div>/' index.html
git add .
git commit -m "Create blog page - Tambah halaman blog"
echo "✅ Blog commit 1: Create blog page"

# Update untuk blog commit 2
sed -i 's/<h3>Project 1<\/h3>/<h3>Artikel Kedua<\/h3>/' index.html
sed -i 's/<p>Deskripsi project pertama<\/p>/<p>Artikel tentang teknologi terbaru<\/p>/' index.html
git add .
git commit -m "Add blog posts - Tambah artikel blog"
echo "✅ Blog commit 2: Add blog posts"

# Update untuk blog commit 3
sed -i 's/<h3>Project 2<\/h3>/<h3>Artikel Ketiga<\/h3>/' index.html
sed -i 's/<p>Deskripsi project kedua<\/p>/<p>Artikel tentang tips programming<\/p>/' index.html
git add .
git commit -m "Add comments - Tambah artikel ketiga"
echo "✅ Blog commit 3: Add comments"

# Kembali ke main dan buat branch project dari commit 2
git checkout main
git checkout -b project HEAD~2
echo "✅ Branch 'project' dibuat dari commit 2"

# Update untuk project commit 1
sed -i 's/<h2>Projects<\/h2>/<h2>My Projects<\/h2>/' index.html
sed -i 's/<div class="project-grid">/<div class="project-grid">\n                    <div class="project-card">\n                        <h3>E-Commerce Website<\/h3>\n                        <p>Website toko online dengan React dan Node.js<\/p>\n                    <\/div>/' index.html
git add .
git commit -m "Create project page - Tambah project e-commerce"
echo "✅ Project commit 1: Create project page"

# Update untuk project commit 2
sed -i 's/<h3>Project 1<\/h3>/<h3>Mobile App<\/h3>/' index.html
sed -i 's/<p>Deskripsi project pertama<\/p>/<p>Aplikasi mobile dengan React Native<\/p>/' index.html
git add .
git commit -m "Add project gallery - Tambah project mobile app"
echo "✅ Project commit 2: Add project gallery"

# Update untuk project commit 3
sed -i 's/<h3>Project 2<\/h3>/<h3>Dashboard Admin<\/h3>/' index.html
sed -i 's/<p>Deskripsi project kedua<\/p>/<p>Dashboard admin dengan Vue.js dan Laravel<\/p>/' index.html
git add .
git commit -m "Add project details - Tambah project dashboard"
echo "✅ Project commit 3: Add project details"

# Kembali ke main dan buat branch contact dari commit 4
git checkout main
git checkout -b contact
echo "✅ Branch 'contact' dibuat dari commit 4"

# Update untuk contact commit 1
sed -i 's/<h2>Contact<\/h2>/<h2>Hubungi Saya<\/h2>/' index.html
sed -i 's/<p>Email: email@example.com<\/p>/<p>Email: contact@portfolio.com<\/p>\n                <p>LinkedIn: linkedin.com\/in\/portfolio<\/p>/' index.html
git add .
git commit -m "Create contact form - Update contact info"
echo "✅ Contact commit 1: Create contact form"

# Update untuk contact commit 2
sed -i 's/<p>Phone: +62 123 456 789<\/p>/<p>Phone: +62 123 456 789<\/p>\n                <p>Instagram: @portfolio.dev<\/p>/' index.html
git add .
git commit -m "Add email validation - Tambah social media"
echo "✅ Contact commit 2: Add email validation"

# Kembali ke main
git checkout main
echo "✅ Kembali ke branch main"

echo ""
echo "🎉 Setup Git Portfolio selesai!"
echo ""
echo "📋 Struktur yang dibuat:"
echo "   main: 4 commits (Initial → Homepage → Navigation → Footer)"
echo "   blog: 3 commits (dari commit 2 main)"
echo "   project: 3 commits (dari commit 2 main)"
echo "   contact: 2 commits (dari commit 4 main)"
echo ""
echo "🔧 Commands yang bisa digunakan:"
echo "   git log --oneline --graph --all"
echo "   git checkout blog"
echo "   git checkout project"
echo "   git checkout contact"
echo "   git checkout main"
echo ""
echo "🌐 Buka index.html di browser untuk melihat hasilnya!"
