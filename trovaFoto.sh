#!/bin/sh

#leggo le due directory e poi la terza directory dove salvare il tutto

#rimuovo il file con i risultati precedenti
rm imgFind_result

mkdir $3

python3 imgFind.py $1 $2 >> imgFind_result

#una volta terminata vado a leggere i risultati e per ogni file lo sposto
while IFS= read -r line; do
	    echo "Text read from file: $line"
	    mv $line $3
    done < imgFind_result
