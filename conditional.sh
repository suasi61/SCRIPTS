#!/bin/bash

read -p "introdueix el teu nom " NOMBRE
NOM="Allen"

if [[ ${NOM} == "MIQUEL" ]]
then 
    echo "ets en Miquel"
else
    echo "ets en ${NOM}"
fi