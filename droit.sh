#!/bin/sh
## droit.sh for sh in /home/pera_s/test
## 
## Made by simon pera
## Login   <pera_s@epitech.net>
## 
## Started on  Mon Apr 11 14:31:21 2016 simon pera
## Last update Mon Apr 11 16:36:30 2016 simon pera
##

echo "<<<< Bonjour, bienvenue dans le script de gestion des droits des dépos GIT de Simon Pera >>>>"
echo ""
echo -n "Sur quel dépo voulez-vous appliquer les droits [ $1 ] ? "
read repo
if [ -z $repo ]
then
    repo=$1
fi
while [ True ]
do
    while [ -z $user ]
    do
	echo -n "A qui voulez-vous appliquer les droits ? "
	read user
    done
    echo -n "Quel droit voulez-vous lui attribuer [ rw ]? "
    read droit
    if [ -z $droit ]
    then
	droit='rw'
    fi
    blih repository setacl $repo $user $droit
    echo -n "Voulez-vous appliquer des droits à d'autre personne [ y ] ? "
    read stop
    if [ -z $stop ]
    then
	stop='y'
    fi
    while [ True ]
    do
	if [ "$stop" == "yes" ] || [ "$stop" == "y" ]
	then
	    break
	else [ "$stop" == "non" ] || [ "$stop" == "n" ]
	    break
	fi
    done
    if [ "$stop" == "non" ] || [ "$stop" == "n" ]
    then
	break
    fi
    unset user
done
