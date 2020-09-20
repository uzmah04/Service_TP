#!/bin/bash

cd /home/uzmah/src/Service_TP/toCrypt
array=($(echo *))

cd /home/uzmah/src/Service_TP/Crypted
In_Crypted="$(echo *)"

for fichier in ${array[*]}
do
	if [[ "$In_Crypted" == "$fichier.encrypted" ]]
	then
		echo "present $fichier"
	else
		cd /home/uzmah/src/Service_TP
		python3 encrypt.py "$fichier"
		mv home/uzmah/src/Service_TP/toCrypt/"$fichier.encrypted" home/uzmah/src/Service_TP/Crypted/"$fichier.encrypted"
	fi
done
