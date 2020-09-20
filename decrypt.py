from cryptography.fernet import Fernet
import os
import sys

fichier = sys.argv[1]

file = open('key.key','rb')
key = file.read()
file.close

os.chdir("/home/uzmah/src/Service_TP/toDecrypt")

with open(fichier, 'rb') as f:
	data = f.read()

fernet = Fernet(key)
decrypted = fernet.decrypt(data)

nom_decrypt = fichier+'.decrypted'

with open(nom_decrypt, 'wb') as f:
	f.write(decrypted)
