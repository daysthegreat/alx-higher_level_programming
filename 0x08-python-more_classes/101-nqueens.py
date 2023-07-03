#!/usr/bin/python3
"""
a program that solves the N queens problem.

on an NxN chessboard.
"""


import sys


def is_safe(board, row, col):
    # Check if there is a queen in the same column
    for i in range(row):
        if board[i][col] == 1:
            return False

    # Check upper diagonal on the left side
    i = row - 1
    j = col - 1
    while i >= 0 and j >= 0:
        if board[i][j] == 1:
            return False
        i -= 1
        j -= 1

    # Check upper diagonal on the right side
    i = row - 1
    j = col + 1
    while i >= 0 and j < N:
        if board[i][j] == 1:
            return False
        i -= 1
        j += 1

    return True


def solve_nqueens(board, row):
    if row == N:
        # Print the solution
        for i in range(N):
            for j in range(N):
                if board[i][j] == 1:
                    print(f'[{i}, {j}]', end=' ')
        print()
        return

    for col in range(N):
        if is_safe(board, row, col):
            board[row][col] = 1
            solve_nqueens(board, row + 1)
            board[row][col] = 0


def nqueens(N):
    if not N.isdigit():
        print("N must be a number")
        sys.exit(1)

    N = int(N)

    if N < 4:
        print("N must be at least 4")
        sys.exit(1)

    board = [[0] * N for _ in range(N)]
    solve_nqueens(board, 0)


if __name__ == '__main__':
    if len(sys.argv) != 2:
        print("Usage: nqueens N")
        sys.exit(1)

    nqueens(sys.argv[1])
