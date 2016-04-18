#!/bin/sh
## repo-clone.sh for reppo-clone in /home/pera_s/programme
## 
## Made by simon pera
## Login   <pera_s@epitech.net>
## 
## Started on  Mon Mar  7 23:35:41 2016 simon pera
## Last update Mon Apr 18 19:34:06 2016 simon pera
##

echo "<<<< Bonjour, bienvenue dans le script de clonage de dépo GIT de Simon Pera >>>>"
echo ""
echo "A qui appartient le dépo ? [pera_s]"
read name
if [ -z $name ]
then
    name='pera_s'
fi
echo "Quel est le dépo à cloner ? [ $1 ]"
read depo
if [ -z $depo ]
then
    depo=$1
fi
echo "git clone git@git.epitech.eu:/$name/$depo"
git clone git@git.epitech.eu:/$name/$depo
