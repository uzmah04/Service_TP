#!/bin/bash

cd /home/uzmah/Documents/Service/toDecrypt
array=($(echo *))

cd /home/uzmah/Documents/Service/Decrypted
In_Decrypted="$(echo *)"

for fichier in ${array[*]}
do
        if [[ "$In_Decrypted" == "$fichier.decrypted" ]]
        then
                echo "present $fichier"
        else
                cd /home/uzmah/Documents/Service
                python3 decrypt.py "$fichier"
                mv ~/Documents/Service/toDecrypt/"$fichier.decrypted" ~/Documents/Service/Decrypted/"$fichier.decrypted"
        fi
done

