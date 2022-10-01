import base64

with open('rfc4648.txt', 'r') as file:
    data = file.read().rstrip()


while (1):
    data = base64.b64decode(data)
    #print(str(data))
    if "FLAG-" in str(data):
        print(data)
        break
