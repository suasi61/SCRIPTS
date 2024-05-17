#!/bin/bash

#Genera un nombre aleatori entre 1 i 10:
adivina=$(( ( RANDOM % 10 )  + 1 ))

########################################################
# Escriu el teu codi aqui
########################################################
echo "Tres intents per adivinar el numero entre el 1 i el 10"

# Inicialitzar el nombre d'intents
intents=3

while [ $intents -gt 0 ]; do
    read -p "Introdueix un nombre: " NUMERO
    if [ $NUMERO -eq $adivina ]; then
        echo "Eureka"
        exit
    elif [ $NUMERO -lt $adivina ]; then
        echo "FRED"
    else
        echo "CALENT"
    fi
    intents=$(( $((intents)) - 1 )) # Corregir la disminució dels intents
done

echo "Has acabat amb els tres intents. El nombre a adivinar era: ${adivina}"

echo "El nombre que havies d'adivinar era: ${adivina}"
########################################################
# Fi del teu codi
########################################################