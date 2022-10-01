import socket

def print_maze(maze):
    for line in maze:
         print(line)

def get_start_and_end(maze):
    start = ()
    end   = ()
    
    for i in range(len(maze)):
        if 'S' in maze[i]:
            for j in range(len(maze[i])):
                if maze[i][j] == 'S':
                    start = (i, j)      # y, x
        if 'E' in maze[i]:
            for j in range(len(maze[i])):
                if maze[i][j] == 'E':
                    end = (i, j)        # y, x

    print(start)
    print(end)
    return (start, end)

def escape_from_corn(maze, path, endpoints):
    current = path[len(path) - 1]
    print(path)
    print_maze(maze)

    if current == endpoints[1]:
        return

    if current[0] < 20:
        if maze[current[0] + 1][current[1]] == ' ':
            maze[current[0] + 1] = maze[current[0] + 1][:current[1]] + '-' + maze[current[0] + 1][current[1] + 1:]
            path.append([current[0] + 1, current[1]])
            escape_from_corn(maze, path, endpoints)

    if current[1] < 20:
        if maze[current[0]][current[1] + 1] == ' ':
            maze[current[0]] = maze[current[0]][:current[1] + 1] + '-' + maze[current[0]][current[1] + 2:]
            path.append([current[0], current[1] + 1])
            escape_from_corn(maze, path, endpoints)

    if current[0] > 0:
        if maze[current[0] - 1][current[1]] == ' ':
            maze[current[0] - 1] = maze[current[0] - 1][:current[1]] + '-' + maze[current[0] - 1][current[1] + 1:]
            path.append([current[0] - 1, current[1]])
            escape_from_corn(maze, path, endpoints)

    if current[1] > 0:
        if maze[current[0]][current[1] - 1] == ' ':
            maze[current[0]] = maze[current[0]][:current[1] - 1] + '-' + maze[current[0]][current[1] + 1:]
            path.append([current[0], current[1] - 1])
            escape_from_corn(maze, path, endpoints)

    #backtracking
    current = path[len(path) - 1]
    if current != endpoints[1]:
        wrong = path[len(path) - 1]
        path.remove(wrong)
        maze[wrong[0]][wrong[1]] = ' '
        escape()
            
def netcat(hostname, port):
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect((hostname, port))
    # s.sendall(content)

    print("-----------------------------------------")
    data = s.recv(1024)
    data = repr(data)
    #print("recieved : " + data)
    lines = data.split("\\n")
    lines[0] = lines[0][2:]
    print_maze(lines)

    return lines


maze = netcat('nc.ctf.unitedctf.ca',5001)

endpoints = get_start_and_end(maze)
path = [endpoints[0]]
escape_from_corn(maze, path, endpoints)
