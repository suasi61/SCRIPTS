#!/bin/bash
#aquest script ha de finalitzar si qui l'executa no és un usuari Root
#l'usari root pista la comanda id ens dona el nostre UID
#el UID de root és 0
if [[ ${UID} -ne 0 ]]
then
    echo "no ets root"
    exit 1
fi

echo "ets root"
exit 0

