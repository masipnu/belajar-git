# ==========================
# INTRODUCTION
# ==========================
# Mengatur username
git config --global user.name "masipnu"

# Mengatur email
git config --global user.email "masipnu1@gmail.com"

# Mengaktifkan git
git init

# Buat file
touch tugas1.md

# Cek status git
git status

# Memasukkan file ke staging area
git add *
git add tugas1.md readme.md

# Men-commit file staging
git commit -m "Init pertama"

# Melihat history commit
git log

# Log ringkas
git log --oneline

# Git add dan commit langsung
git add tugas2.md && git commit -m "menambahkan tugas2.md"
git add tugas3.md && git commit -m "menambahkan tugas3.md"
git add tugas4.md && git commit -m "menambahkan tugas4.md"
git add tugas5.md && git commit -m "menambahkan tugas5.md"

# =============================
# GIT CHEKCOUT, RESET, REVERT
# =============================
# Melihat perubahan file
git diff tugas1.md

# Head adalah pointer status commit terakhir
git show head

# Git Checkout : mengembalikan pointer head ke status sebelumnya
git log --oneline
git checkout 442aee3

# Cek log dengan graph
git log --graph

# Cek log full
git log --reflog --graph

# Mengembalikan pointer head ke commit terbaru/ terakhir
git checkout master

# Mengembalikan kondisi file (sudah diedit, tapi belum di-add dan dicommit)
# Dengan kata lain meng-undo perubahan terakhir (yang belum di-add)
git checkout head tugas2.md
git checkout -- tugas2.md

# Menampilkan commit HEAD (commit yang sedang aktif)
git show head

# Menampilkan commit terakhir
git show master

# ========
# Mengembalikan kondisi file yang sudah naik ke staging area ke working directory
# Cek status dan add
git status
git add tugas1.md
git status
# Mengembalikan ke staging area , namun perubahan masih ada
git reset head tugas1.md
git status

# Mengembalikan commit baru yang telah terhapus, karena kembali ke commit yang awal, setelah reset
# Dengan cara ini kita bisa mengembalikan commit tanpa kehilangan history project
# Command yang digunakan untuk mengembalikan sebuah commit dalam bentuk commit baru
# git revert <hash commit>


# ====================
# GIT BRANCH
# ====================
# Melihat cabang/ branch
git branch

# Membuat branch baru
git branch kesimpulan

# Berpindah branch
git checkout kesimpulan

<<komentar
ini komentar multibaris
Command untuk membuat branch dengan nama "langsung-pindah"
sekaligus berpindah ke-branch
komentar
git checkout -B "langsung-pindah"

# Menggabungkan 2 branch
<<komen
Merge ada 2:
- fast forward
    merge yang linear
- three way
    merge yang tidak linear dengan master
komen
# Pindah ke branch master
git checkout master
# lakukan merge
git merge kesimpulan

# Melihat full history
git log --graph --branches

<<komen
Jika kita memiliki 2 file yang sama dengan isi berbeda di branch berbeda,
lalu kita ingin melakukan merge, tentu akan terjadi konflik,
ini harus diperhatikan
Solusinya:
Samakan isi file keduanya, dengan menentukan yang dipilih
lalu masukkan ke staging area
dan buat commit "resolve ..."
maka git akan langsung melakukan merge, cek dengan "git log --graph"
komen

# ====================
# GIT REMOTE
# ====================
# Buat folder baru
mkdir intro-to-git
cd intro-to-git

# Buat repositori baru di github
# Buat file baru dan langsung push ke github
echo "# intro-to-git" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/masipnu/intro-to-git.git
git push -u origin main

# Jika file di komputer sudah ada...
git remote add origin git@github.com:masipnu/belajar-git.git

# Cek remote
git remote

# Mengupload repo | biasanya error, karena branch di github adalah main
git push

# Ulangi lagi
git push --set-upstream origin master

# Coba cara lain
git remote add origin git@github.com:masipnu/belajar-git.git
git branch -M main
git push -u origin main

# Mengecek perbandingan repo local dan online
git fetch
# Mensingkronisasi repo online ke local (merge)
git pull
