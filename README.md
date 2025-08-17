# Tutorial Git Portfolio

Project ini dibuat untuk demonstrasi Git dengan multiple branches dan commits. Web portfolio akan berubah sesuai dengan setiap commit yang dibuat.

## 🚀 Cara Pakai

### Untuk Linux/Mac:
1. **Jalankan setup script:**
   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```

### Untuk Windows:
1. **Jalankan setup script:**
   ```cmd
   setup.bat
   ```

2. **Lihat struktur Git yang dibuat:**
   ```bash
   git log --oneline --graph --all
   ```

3. **Coba pindah branch:**
   ```bash
   git checkout blog
   git checkout project
   git checkout contact
   git checkout main
   ```

## 📋 Struktur Git

### Main Branch (4 commits)
- **Commit 1:** Initial commit - Portfolio dasar
- **Commit 2:** Add homepage - Update header portfolio
- **Commit 3:** Add navigation - Update deskripsi home
- **Commit 4:** Add footer - Update about section

### Blog Branch (3 commits dari commit 2 main)
- **Commit 1:** Create blog page - Tambah halaman blog
- **Commit 2:** Add blog posts - Tambah artikel blog
- **Commit 3:** Add comments - Tambah artikel ketiga

### Project Branch (3 commits dari commit 2 main)
- **Commit 1:** Create project page - Tambah project e-commerce
- **Commit 2:** Add project gallery - Tambah project mobile app
- **Commit 3:** Add project details - Tambah project dashboard

### Contact Branch (2 commits dari commit 4 main)
- **Commit 1:** Create contact form - Update contact info
- **Commit 2:** Add email validation - Tambah social media

## 🎯 Fitur

- ✅ Web portfolio responsive
- ✅ Multiple Git branches
- ✅ Visual Git history
- ✅ Otomatis update web tiap commit
- ✅ CSS styling yang bagus

## 📁 Files

- `index.html` - Web portfolio utama
- `style.css` - Styling CSS (dibuat otomatis)
- `setup.sh` - Script untuk setup Git
- `README.md` - Dokumentasi ini

## 🌐 Preview

Buka `index.html` di browser untuk melihat hasilnya. Setiap branch akan menampilkan versi portfolio yang berbeda sesuai dengan commit yang dibuat.

## 🔧 Git Commands yang Dipelajari

- `git init` - Inisialisasi repository
- `git add` - Tambah file ke staging
- `git commit` - Commit perubahan
- `git branch` - Buat branch baru
- `git checkout` - Pindah branch
- `git log` - Lihat history commit
- `git merge` - Gabung branch

Perfect untuk konten Instagram tutorial Git! 🎉

```bash
bash setup.sh
git checkout master
git merge project

git rebase master blog
# pilih incoming
git add .
git rebase --continue
# pilih incoming
git add .
git rebase --continue
git rebase blog master

git cherry-pick contact
```
