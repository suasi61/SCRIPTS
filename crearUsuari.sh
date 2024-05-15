#!/bin/bash
#aquest script ha de finalitzar si qui l'executa no és un usuari Root
#l'usari root pista la comanda id ens dona el nostre UID
#el UID de root és 0
if [[ ${UID} -ne 0 ]]
then
    echo "no ets root"
    exit 1
fi

#TRES PARÀMETRES OBLIGATORIS
if [[${#} -ne 3]]:
then
    echo "has d'introduir 3 paràmetres"
    exit 1
fi
#DEMANAM EL NOM COMPLET
FULLNAME=${1}
#DEMANAM L'USERNAME
USERNAME=${2}
#DEMANAR EL PASSWORD
PASSWORD=${3}
#CREAR L'USARI
useradd -c "$(FULL_NAME)" -m "$(USERNAME)"
echo ${?}
#SI LA COMANDA HA FALLAT
if [[ ${?} -ne 0 ]]
then
    echo "No s'ha pogut crear l'usuari"
    exit 1
fi
#CREAR LA CONTRASEÑA
echo "${USERNAME}:{PASSWORD}" | chpasswd
#APLICAR LA CONTRASEÑA
echo "${USERNAME}:{PASSWORD}" | chpasswd

#COMPROVAR QUE EL CANVI DE PASSWORD ES CORRECTE

echo "Usuari ${USERNAME} creat correctament"
exit 0