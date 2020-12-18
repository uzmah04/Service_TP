# Service_TP
## Crypter et Decrypter
 
On a plusieurs fichiers qui contribuent au fonctionnement de ce service.


1. <<key.py>> est le fichier qui va creer une paire de cle qui va permettre de decrypter un message crypter.

2. On a 4 dossiers <<toCrypt>>, <<Crypted>>, <<toDecrypt>> et <<Decrypted>>. 
	- <<toCrypt>> va contenir tous les documents qu'on va crypter. 
	- <<Crypted>> va contenir tous les documents qui ont déjà été crypter.
	- <<toDecrypt>> va contenir tous les documents crypter qu'on doit decrypter.
	- <<Decrypted>> va contenir tous les documents qui ont déjà été decrypter.

3. <<encrypt.py>> et <<decrypt.py>> sont les fichiers qui vont crypter et decrypter les documents.

4. <<check_encrypt.sh>> et <<check_decrypt.sh>> vont verifier les documents dans les dossiers <<toCrypt>> et <<toDecrypt>>. Ils vont aussi bouger les documents déjà crypter ou decrypter dans les dossiers <<Crypted>> ou <<Decrypted>>.

5. <<decrypt.service>> et <<encrypt.service>> sont deux fichiers service qui vont permettre de verifier si on a des fichiers à crypter ou decrypter dans les fichiers <<toCrypt>> et <<toDecrypt>>.

6. <<install.sh>> est le fichier qui va automatiser l'installation du service crypter et decrypter.


### Pour commencer:
- Il faut copier le repo Service_TP et lancer le fichier d'installation
```sh
        $ git clone https://github.com/uzmah04/Service_TP.git
        $ cd Service_TP
        $ ./install.sh
```
