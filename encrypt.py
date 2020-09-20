from cryptography.fernet import Fernet
import os
import sys

fichier = sys.argv[1]

file = open('key.key', 'rb')
key = file.read()
file.close

os.chdir("/home/uzmah/Documents/Service/toCrypt")

with open(fichier, 'rb') as f:
	data = f.read()

fernet = Fernet(key)
encrypted = fernet.encrypt(data)

nom_encrypt = fichier+'.encrypted'

with open(nom_encrypt, 'wb') as f:
	f.write(encrypted)
