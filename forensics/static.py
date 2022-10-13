import png

with open("static.png", "rb") as image:
    b = bytearray(image.read())
    with open("new-static", "wb") as output:
        output.write(b)
