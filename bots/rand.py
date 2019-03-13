import random

n_lines, n_columns = map(int, input().split())
n_types = int(input())
player_idx = int(input())
field = [list(map(int, input().split())) for i in range(n_lines)]

free = []
for i in range(n_lines):
    for j in range(n_columns):
        if field[i][j] == -1:
            free.append((i, j))

print(*random.choice(free))

