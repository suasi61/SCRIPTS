#!/bin/bash
read -p "introdueix un número " NUMERO
if [[ ${NUMERO} -eq 5 ]]
then
    #l'usuari ha introduit un número igual
   echo "has introduit el número 5"
elif [[ ${NUMERO} -lt 5 ]]
then
    #l'usuri ha introduit un número menor
    echo "has introduit un número menor que 5 "
elif [[ ${NUMERO} -gt 5 ]]
then
    #l'usari ha introduit un número mayor
    echo "has introduit un número mayor que 5 "
fi