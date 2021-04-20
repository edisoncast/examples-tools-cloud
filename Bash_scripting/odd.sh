#!/bin/bash
#Ejercicio 3

for i in {1..10}
do
	numero=$(($i % 2))
	if [ "$numero" -ne "0" ]; then
		echo $i
        fi
done
