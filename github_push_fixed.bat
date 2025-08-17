@echo off
setlocal

echo ==============================
echo   GitHub Otomatik Yukleyici
echo ==============================

:: Kullanıcı bilgilerini al
set /p GIT_USER="GitHub kullanici adinizi girin: "
set /p GIT_EMAIL="GitHub e-posta adresinizi girin: "

:: Git ayarlari
git config --global user.name "%GIT_USER%"
git config --global user.email "%GIT_EMAIL%"

:: Repo klasorunu Git ile baslat
git init

:: Uzak repo baglantisi ekle (origin daha once varsa silip ekler)
git remote remove origin 2>nul
git remote add origin https://github.com/%GIT_USER%/butik-otel-app.git

:: Dosyalari ekle, commit et ve yukle
git branch -M main
git add .
git commit -m "Ilk otomatik yukleme"
git push -u origin main

echo ==============================
echo Yukleme tamamlandi! GitHub reposuna bakabilirsiniz.
echo ==============================

pause
