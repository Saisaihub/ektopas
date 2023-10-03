echo off
git config --global user.name "Saisaihub"
git config --global user.email "saima0327@gmail.com"
git init
git add .
git commit -m "latest update"
git remote set-url origin git@github.com:Saisaihub/ektopas.git
git push -u origin main
pause