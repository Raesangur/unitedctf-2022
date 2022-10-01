public =  [194, 178, 78,  113, 105, 118, 194, 162, 195, 133, 194, 171, 122, 194, 187, 194, 169, 194, 166, 95, 77]
private = [85,  95,  113, 7,   68,  30,  45,  72,  94,  124, 102, 42,  58,  103, 97,  54,  49,  99,  76,  30, 89, 77, 8, 76]
rep = ""

for i in range(len(public)):
    pub = public[i]
    pri = private[i]

    key = pub - pri
    print(key)
    #rep = rep + str(chr(pub - pri))

print(rep)
