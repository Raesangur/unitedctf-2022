import csv
import base64

xored = "]lOP>GH.@GX.Vx}o}f5H"

with open('dictionary.csv', newline='') as f:
    reader = csv.reader(f)
    data = list(reader)


res = xored.encode()
print(res)

for word in data:

    word = word[0].encode()
    print(word)
    print(res)
    res = [a ^ b for a, b in zip(res, word)]

    
    print(res)
