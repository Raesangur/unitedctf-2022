from sympy import symbols, Eq, solve,sympify
from sympy.parsing.sympy_parser import parse_expr
from decimal import Rounded
import socket

def netcat(hostname, port):
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect((hostname, port))
    # s.sendall(content)

    i = 0
    while 1:
        i = i+ 1

        print("-----------------------------------------")
        data = s.recv(1024)
        data = repr(data)
        print("recieved : " + data)
        x = data.split(": ")
        eq = x[1].split("\n")[0]
        equation1 = eq.split("=")[0]
        equation2 = eq.split("=")[1]
        print(equation1 + " = " + equation2)
        sol = solve(Eq(sympify(equation1),sympify(equation2)))
        # eq = eval(eq)
        # print("Received:", eq)
        # sol = eq.eval()
        print("solution: ", sol[0])
        s.sendall((str(sol[0])+ "\n").encode())
        print(str(i)+ "--------------------------------")
    print("Connection closed.")
    s.shutdown(socket.SHUT_WR)
    s.close()


netcat('nc.ctf.unitedctf.ca',5000)
