# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


# en_til_ti=list(range(1,11))
# en_til_tyve=list(range(1,21))

# all(map(lambda x: x%y, en_til_ti))
    

def divisible_by_all(n, divisors):
    return all(n % d == 0 for d in divisors)

n = 60
divisors = [2, 3, 4, 5]

print(divisible_by_all(n, divisors))  
        
# def number_divisible_by_all(n, divisors):
#     number=1
#     if divisible_by_all(number, divisors):
#         return number
#     else:
        
