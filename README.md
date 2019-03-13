# testing-system-for-tic-tac-toe
The most bestest bloody optimized really cross-platform tic-tac-toe testing system

## Input format for players program:
	<n: number of lines> <m: number of columns>
	<ntypes: number of payers>
	<i: index of player, $(0 <= i < n)$>
	<Matrix A[i][j], $(-1 <= A[i][j] < ntypes)$, $-1$ for empty cell>
### Matrix description:
	A[0][0]   A[0][1]   ... A[0][m-1]
	A[1][0]   A[1][1]   ... A[1][m-1]
	.						.
	.						.
	.						.
	A[n-1][0] A[n-1][1] ... A[n-1][m-1]
## Output format for players program:
	<i: index of player's turn line> <j: index of player's turn column>
