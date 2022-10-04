import csv
import sys
import zipfile

print(str(sys.argv[1]))

if len(sys.argv) > 2:
    print(str(sys.argv[2]))

with open('passwords.csv', newline='') as f:
    reader = csv.reader(f)
    passwords = list(reader)

passwords = passwords[0]
print(str(len(passwords)) + " passwords loaded")

startpoint = 0

if len(sys.argv) > 2:
    if 'r' in sys.argv[2]:
        print("Reversing list")
        passwords.reverse()


    if 'm' in sys.argv[2]:
        startpoint = int(len(passwords) / 2)
        print("Parsing from the middle: " + str(startpoint))
        


with zipfile.ZipFile(sys.argv[1],"r") as zip_ref:
    for pw in passwords[startpoint:]:
        print(pw)
        try:
            zip_ref.extractall("targetdir", pwd=pw.encode())
            print("Archive unzipped with password: " + pw)
            break
        except:
            continue
