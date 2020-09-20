#!/bin/bash

cd /home/uzmah/Documents/Service/toCrypt
array=($(echo *))

cd /home/uzmah/Documents/Service/Crypted
In_Crypted="$(echo *)"

for fichier in ${array[*]}
do
	if [[ "$In_Crypted" == "$fichier.encrypted" ]]
	then
		echo "present $fichier"
	else
		cd /home/uzmah/Documents/Service
		python3 encrypt.py "$fichier"
		mv ~/Documents/Service/toCrypt/"$fichier.encrypted" ~/Documents/Service/Crypted/"$fichier.encrypted"
	fi
done
