import csv

xored = "]lOP>GH.@GX.Vx}o}f5H"

with open('dictionary.csv', newline='') as f:
    reader = csv.reader(f)
    data = list(reader)

#print(data)

for word in data:
    x = xored.encode()
    w = ''.join(word).encode()

    res = ""
    for i in range(min(len(x), len(w))):
        res += chr(x[i] ^ w[i])

    
    #res = xored.encode() ^ ''.join(word).encode()
    print(res)
