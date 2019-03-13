from random import randint, random

n,m,l = map(int,input().split())
types = int(input())
matrix = []
for i in range(n):
    matrix.append(list(map(int,input().split())))

#for i in range()
print((random() < 0.1)*randint(1,types)-1)