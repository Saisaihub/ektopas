echo off
git init
git add .
git config --global user.name "Saisaihub"
git config --global user.email "saima0327@gmail.com"
git commit -m "latest update"
git remote add origin git@github.com:Saisaihub/ektopas.git
git push -u origin main
pause
