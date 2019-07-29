#!/usr/bin/env bash
# File: guessinggame.sh

count=$(ls -1 | wc -l)

function correct_guess {        
    if [[ $1 -lt $2 ]]          
    then
	echo "Muy bajo!"
    elif [[ $1 -gt $2 ]]
    then
	echo "Muy alto!"
    else
	echo ""
	echo "Felicidades, le atinaste!!"
    fi
}

while [[ $count -ne $guess ]]    # One loop...
do
    read -p "Adivina cuántos archivos hay en este directorio? " guess
    # echo "Ingresa la cantidad: $guess"
    echo $(correct_guess $guess $count)
    echo ""
done
