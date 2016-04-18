#!/bin/sh
## push_that.sh for  in /home/pera_s/rendu/Piscine_C_J02
## 
## Made by simon pera
## Login   <pera_s@epitech.net>
## 
## Started on  Tue Sep 29 17:10:18 2015 simon pera
## Last update Sat Mar 19 19:05:27 2016 simon pera
##

echo "git add --all"
git add --all
echo "Quelle message de commit voulez vous: "
read mes
git commit -am "$mes"
echo "git commit -am $mes"
echo "Sur quelle branche voulez-vous push [ master ]: "
read branch
if [ -z $branch ]
then
    branch='master'
fi
git push origin $branch
echo "git push origin $branch"
