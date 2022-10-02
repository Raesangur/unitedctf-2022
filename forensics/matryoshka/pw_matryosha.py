import csv
import string

# create list of all possible passwords
passwords = []
for a in list(string.ascii_letters):
    print(a)
    for b in list(string.ascii_letters):
        for d in range(0, 9999):
            pw = "^m4try0shk4#" + a + b + str(d)
            passwords.append(pw)

with open("passwords.csv", 'w', newline='') as myfile:
     wr = csv.writer(myfile, quoting=csv.QUOTE_ALL)
     wr.writerow(passwords)
