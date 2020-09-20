#!/bin/bash

# Verifier si on a un dossier src ou pas dans le home et cloner le repertoire
cd
code="$(ls)"
folder="src"
if [[ "$code" == *"$folder"* ]]
then
        cd src

        Check_content="$(ls)"
        repo="Service_TP"
        if [[ "$Check_content" == *"$Service_TP"* ]]
        then
                echo "src/Service_Tp present"
        else
                git clone https://github.com/uzmah04/Service_TP.git
                echo "src/Service_TP successful"
        fi

else
        mkdir ~/src
        cd src
	git clone https://github.com/uzmah04/Service_TP.git
        echo "src/Service_TP created"
fi

python3 key.py
echo "Key Created"

sudo su

cp ~/src/Service_TP/encrypt.service /etc/systemd/system/encrypt.service
cp ~/src/Service_TP/decrypt.service /etc/systemd/system/decrypt.service

systemctl enable encrypt.service
systemctl start encrypt.service
echo "Service encrypt started"

systemctl enable decrypt.service
systemctl start decrypt.service
echo "Service decrypt started"

echo "Installation of Encrypt Decrypt Service Successfull"
