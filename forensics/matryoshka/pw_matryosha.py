import string

# create list of all possible passwords
passwords = []
for a in list(string.ascii_letters):
    print(a)
    for b in list(string.ascii_letters):
        for d in range(0, 9999):
            pw = "m4try0shk4#" + a + b + str(d).zfill(4)
            passwords.append(pw)

string = ""
for pw in passwords:
    string += pw + '\n'

with open("passwords.txt", 'w') as myfile:
     myfile.write(string)
