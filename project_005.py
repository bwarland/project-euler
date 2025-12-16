# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

en_til_fem=list(range(1,6))
en_til_ti=list(range(1,11))
en_til_tyve=list(range(1,21))


n = 60
divisors = [2, 3, 4, 5]    

def divisible_by_all(n, divisors):
    return all(n % d == 0 for d in divisors)

assert divisible_by_all(60, divisors)

def smallest_multiple(a_list_of_numbers):
    number=1
    while divisible_by_all(number, a_list_of_numbers)==False:
        number+=1
        divisible_by_all(number, a_list_of_numbers)
        if divisible_by_all(number, a_list_of_numbers)==True:
            print(number)

assert smallest_multiple(en_til_fem)==60
assert smallest_multiple(en_til_ti)==2520
# assert smallest_multiple(en_til_tyve)==232792560

# fungerer, men er mye, mye tregere enn Scheme/Racket
