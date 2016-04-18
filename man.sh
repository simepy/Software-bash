#!/bin/sh
## man.sh for man in /mnt/tmp/test_sime
## 
## Made by simon pera
## Login   <pera_s@epitech.net>
## 
## Started on  Sat Mar 12 22:04:23 2016 simon pera
## Last update Mon Mar 14 23:14:58 2016 simon pera
##

man_fonc() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
        LESS_TERMCAP_md=$'\E[01;38;5;74m' \
        LESS_TERMCAP_me=$'\E[0m' \
        LESS_TERMCAP_se=$'\E[0m' \
        LESS_TERMCAP_so=$'\E[38;5;246m' \
        LESS_TERMCAP_ue=$'\E[0m' \
        LESS_TERMCAP_us=$'\E[04;38;5;146m' \
	man $1 $2
}    

if [ -z $1 ]
then
    while [ -z $man ]
    do
	echo -e "\033[34m\033[1mMan: Quelle manuel voulez-vous ?\033[0m"
	echo -en "\033[34m\033[1mMan: \033[0m"
	read man
    done
fi
if [ -z $1 ]
then
    echo ""
    while [ -z $var ]
    do
	echo -e "\033[31m\033[1m`man -f $man`\033[0m"
	echo ""
	echo -e "\033[34m\033[1mMan: Quelle page de manuel voulez-vous ?\033[0m"
	echo -en "\033[34m\033[1mMan: \033[0m"
	read var
	if [ -z $var ]
	then
	    var=1
	fi
    done
    man_fonc $var $man
else
    while [ -z $var ]
    do
	echo -e "\033[31m\033[1m`man -f $1`\033[0m"
	echo ""
	echo -e "\033[34m\033[1mMan: Quelle page de manuel voulez-vous ?\033[0m"
	echo -en "\033[34m\033[1mMan: \033[0m"
	read var
	if [ -z $var ]
	then
	    var=1
	fi
    done
    man_fonc $var $1
fi
