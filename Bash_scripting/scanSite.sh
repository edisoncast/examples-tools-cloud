#!/bin/bash

#Script para hacer peticiones a un sitio especifico

echo "Ingrese la url para escanear"
read url
if [ -z "$url" ]
then
    echo 'La url no puede ser vacia!'
    exit 0
fi

for i in $(seq 1 10)
do
  echo "Visitando la url $url"  
  curl -I $url &
done

exit 0
