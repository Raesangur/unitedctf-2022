#Made by https://www.codegrepper.com/code-examples/python/encryption+algorithms+in+python

import random

text = input ( "Enter text: " )

result = ""
private_key = ""

for i in text:

    rand = random.randint ( 1, 125 )
    en = rand + ord ( i )
    en = chr ( en )
    en = str ( en )

    private_key = private_key + str ( rand ) + " "

    result = result + en

print ( "\nPublic key:", result )
print ( "Private key:", private_key )

exit()

# c2b24e716976c2a2c385c2ab7ac2bbc2a9c2a65f4d

public =  [194, 178, 78,  113, 105, 118, 194, 162, 195, 133, 194, 171, 122, 194, 187, 194, 169, 194, 166, 95, 77]
private = [85,  95,  113, 7,   68,  30,  45,  72,  94,  124, 102, 42,  58,  103, 97,  54,  49,  99,  76,  30, 89, 77, 8, 76]
rep = ""

for i in range(len(public)):
    pub = public[i]
    pri = private[i]

    rep = rep + str(chr(pub - pri))

print(rep)
