echo off
git config --global user.name "Saisaihub"
git config --global user.email "saima0327@gmail.com"
git init
git add .
git commit -m "latest update"
git remote add origin git@github.com:Saisaihub/ektopas.git
git push -u origin master
pause