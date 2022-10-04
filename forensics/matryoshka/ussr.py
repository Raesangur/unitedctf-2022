import os
import subprocess
import zipfile


current = 123
while 1:
    result = subprocess.check_output("/usr/bin/fcrackzip -u -D -p passwords.txt matryoshka-" + str(current) + ".zip", shell=True)
    result = result.decode().split(" == ")[1].strip();
    print(str(current) + ": " + result)

    with zipfile.ZipFile("matryoshka-" + str(current) + ".zip", "r") as f:
        f.extractall("zip-output", pwd=result.encode())
        current = current + 1
        os.rename("zip-output/matryoshka.zip", "./matryoshka-" + str(current) + ".zip")


