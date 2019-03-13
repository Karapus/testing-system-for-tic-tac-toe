def check():
    if step_x<n and step_x>=0 and step_y<m and step_y>=0:
        if matrix[step_x][step_y] == -1:
            return True
    return False

n,m = map(int,input().split())
types = int(input())
matrix = []
for i in range(n):
    matrix.append(list(map(int,input().split())))
step_x,step_y = map(int,input().split())

print(check())