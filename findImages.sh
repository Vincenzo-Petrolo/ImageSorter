#!/bin/sh

#receive as arguments
#$1 the directory path that contains all the known faces
#$2 the directory path that contains the images where to search
#$3 the directory path where to move all the found images


rm imgFind_result

mkdir $3

python3 imgFind.py $1 $2 >> imgFind_result

while IFS= read -r line; do
	    mv $line $3
    done < imgFind_result

rm imgFind_result
