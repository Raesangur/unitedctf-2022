5# https://levelup.gitconnected.com/solve-a-maze-with-python-e9f0580979a1
import socket

def print_maze(maze):
    for line in maze:
        print(*line, sep='\t')

def get_start_and_end(maze):
    start = ()
    end   = ()
    
    for i in range(len(maze)):
        if 'S' in maze[i]:
            for j in range(len(maze[i])):
                if maze[i][j] == 'S':
                    start = (i, j)
        if 'E' in maze[i]:
            for j in range(len(maze[i])):
                if maze[i][j] == 'E':
                    end = (i, j)

    #print(start)
    #print(end)
    return (start, end)

def to_maze(lines):
    maze = []
    for line in lines:
        curr = []
        for char in line:
            if char == 'S' or char == 'E' or char == ' ':
                curr.append(0)
            else:
                curr.append(1)
        maze.append(curr)
    return maze

def create_matrix(maze, endpoints):
    m = []
    for i in range(len(maze)):
        m.append([])
        for j in range(len(maze[i])):
            m[-1].append(0)
    i,j = endpoints[0]
    m[i][j] = 1

    return m

def make_step(k, maze, matrix):
    for i in range(len(matrix)):
        for j in range(len(matrix[i])):
            if matrix[i][j] == k:
                if i > 0 and matrix[i - 1][j] == 0 and maze[i - 1][j] == 0:
                    matrix[i - 1][j] = k + 1
                if j > 0 and matrix[i][j - 1] == 0 and maze[i][j - 1] == 0:
                    matrix[i][j - 1] = k + 1
                if i < len(matrix) - 1 and matrix[i + 1][j] == 0 and maze[i + 1][j] == 0:
                    matrix[i + 1][j] = k + 1
                if j < len(matrix[i]) - 1 and matrix[i][j + 1] == 0 and maze[i][j + 1] == 0:
                    matrix[i][j + 1] = k + 1
    #print_maze(matrix)

def reverse_maze(matrix, endpoints):
    i, j = endpoints[1]
    k = matrix[i][j]
    path = [(i,j)]
    
    while k > 1:
        if i > 0 and matrix[i - 1][j] == k - 1:
            i, j = i - 1, j
            path.append((i, j))
            k-=1
        elif j > 0 and matrix[i][j - 1] == k - 1:
            i, j = i, j - 1
            path.append((i, j))
            k-=1
        elif i < len(matrix) - 1 and matrix[i + 1][j] == k - 1:
            i, j = i + 1, j
            path.append((i, j))
            k-=1
        elif j < len(matrix[i]) - 1 and matrix[i][j + 1] == k - 1:
            i, j = i, j + 1
            path.append((i, j))
            k -= 1

    path.reverse()
    return path

def to_coords(path):
    coords = []
    for step in path:
        coord = "{0} {1}\n".format(step[0], step[1])
        coords.append(coord)

    return coords

            
def netcat(hostname, port):
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect((hostname, port))
    # s.sendall(content)

    print("-----------------------------------------")
    data = s.recv(4096)
    data += s.recv(4096)
    data = repr(data)
    #print("recieved : " + data)
    lines = data.split("\\n")
    lines[0] = lines[0][2:]
    lines.pop()
    for line in lines:
        print(line)

    return s, lines


# receive packets
s, lines = netcat('nc.ctf.unitedctf.ca',5002)

maze = to_maze(lines)
#print_maze(maze)

endpoints = get_start_and_end(lines)


matrix = create_matrix(maze, endpoints)
#print_maze(matrix)

k = 0
while matrix[endpoints[1][0]][endpoints[1][1]] == 0:
    k += 1
    make_step(k, maze, matrix)

#print_maze(matrix)

path = reverse_maze(matrix, endpoints)
#print(path)

coords = to_coords(path)
#print(coords)

coords = coords[1:]
coords = coords[:-1]

resp = ""
for coord in coords:
    resp += coord

resp += '.\n'
print(resp)
s.sendall(resp.encode())

print("--------------------------------")
data = s.recv(1024)
data = repr(data)
print("recieved : " + data)

print("Connection closed.")
s.shutdown(socket.SHUT_WR)
s.close()
