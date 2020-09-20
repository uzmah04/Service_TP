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

cd ~/src/Service_TP

chmod +x key.py
python3 key.py
echo "Key Created"

chmod +x encrypt.service
chmod +x decrypt.service
sudo cp encrypt.service /etc/systemd/system/encrypt.service
sudo cp decrypt.service /etc/systemd/system/decrypt.service

sudo systemctl enable encrypt.service
sudo systemctl start encrypt.service
echo "Service encrypt started"

sudo systemctl enable decrypt.service
sudo systemctl start decrypt.service
echo "Service decrypt started"

echo "Installation of Encrypt Decrypt Service Successfull"
