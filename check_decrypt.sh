#!/bin/bash

while [ true ]
do
	cd /home/uzmah/src/Service_TP/toDecrypt
	array=($(echo *))

	cd /home/uzmah/src/Service_TP/Decrypted
	In_Decrypted="$(echo *)"

	for fichier in ${array[*]}
	do
        	if [[ "$In_Decrypted" == "$fichier.decrypted" ]]
        	then
                	echo "present $fichier"
        	else
                	cd /home/uzmah/src/Service_TP
                	python3 decrypt.py "$fichier"
                	mv ~/src/Service_TP/toDecrypt/"$fichier.decrypted" ~/src/Service_TP/Decrypted/"$fichier.decrypted"
        	fi
	done
done
