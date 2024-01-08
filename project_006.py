
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum

# Formulas
# ======================================================
# 1^2 + 2^2 + 3^2 + ... + n^2 = n(2n+1)(n+1)/6

# 1+2+3+ ... +n=n(n+1)/2


def sum_of_squares(n):
    return n*(2*n+1)*(n+1)/6

assert sum_of_squares(10)==385

def sum_of_numbers(n):
    return n*(n+1)/2

assert sum_of_numbers(10)==55

def square_of_sum(n):
    return sum_of_numbers(n)**2

assert square_of_sum(10)==3025

def diff_sum_of_squares_square_of_sums(n):
    return square_of_sum(n)-sum_of_squares(n)

assert diff_sum_of_squares_square_of_sums(10)==2640

diff_sum_of_squares_square_of_sums(100)
