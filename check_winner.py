def check_bounds(x,y):
    if(x>=0 and x<n and y>=0 and y<m):
        return True
    return False

def check_win(ind,x,y,stepx,stepy):
    res = True
    for i in range(l):
        if(check_bounds(x+stepx*i,y+stepy*i)):
            res = res and (matrix[x+stepx*i][y+stepy*i]==ind)
        else:
            return False
    return res


n,m,l = map(int,input().split())
types = int(input())
matrix = []
for i in range(n):
    matrix.append(list(map(int,input().split())))
    
for i in range(types):
    win = False
    for x in range(n):
        for y in range(m):
            for sx in range(-1,2):
                for sy in range(-1,2):
                    if(sx or sy):
                        win = win or check_win(i,x,y,sx,sy)
    if win:
        print(i)
        break