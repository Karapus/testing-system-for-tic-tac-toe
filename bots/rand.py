import random

def play(n_lines, n_columns, n_types, player_idx, field):
    free = []
    for i in range(n_lines):
        for j in range(n_columns):
            if field[i][j] == -1:
                free.append((i, j))

    return random.choice(free)

if __name__ == '__main__':
    n_lines, n_columns = map(int, input().split())
    n_types = int(input())
    player_idx = int(input())
    field = [list(map(int, input().split()))
             for i in range(n_lines)]
    print(*play(n_lines, n_columns, n_types, player_idx, field))


