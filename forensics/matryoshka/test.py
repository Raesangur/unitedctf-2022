import zipfile

with zipfile.ZipFile("matryoshka.zip","r") as zip_ref:
    for pw in (b'test1', b'test2', b'test3'):
        try:
            zip_ref.extractall("1", pwd=pw)
            break
        except:
            print("Wrong password")
            continue
