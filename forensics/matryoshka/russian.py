import csv
import sys
import zipfile

print(str(sys.argv[1]))

with open('passwords.csv', newline='') as f:
    reader = csv.reader(f)
    passwords = list(reader)

print(str(len(passwords[0])) + " passwords loaded")

with zipfile.ZipFile(sys.argv[1],"r") as zip_ref:
    for pw in passwords[0]:
        print(pw)
        try:
            zip_ref.extractall("targetdir", pwd=pw.encode())
            print("Archive unzipped with password: " + pw)
            break
        except:
            continue
