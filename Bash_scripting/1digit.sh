#!/bin/bash
# One digit or more


echo "Ingrese un numero"
read numero
if [ -z "$numero" ]
then
    echo 'La entrada no puede ser vacia!'
    exit 0
fi


if ! [[ "$numero" =~ ^[+-]?[0-9]+\.?[0-9]*$ ]] 
then
    echo "Usted debe ingresar un número"
    exit 0
fi

if [ $numero -lt 10 ];
then
echo "El $numero es un numero de 1 digito"
else
echo "El $numero es un numero de más de 1 digito"
fi
