secret = "²Nqiv¢Å«z»©¦_M"
#secret_string = str.encode(secret)
secret_string = ':'.join(x.encode('utf-8').hex() for x in secret)
print(secret_string)

exit()

text = "0xc2 0xb2 0x4e 0x71 0x69 0x76 0xc2 0xa2 0xc3 0x85 0xc2 0xab 0x7a 0xc2 0xbb 0xc2 0xa9 0xc2 0xa6 0x5f 0x4d";

texts = text.split(" ")

print(texts)

for hexa in texts:
    print(int(hexa, 16))
