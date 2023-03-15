# PROJECT EULER problem 001
# sum all multiples of 3 and 5 below 1000

def multiple_of_3_or_5(number):
    return number%3==0 or number%5==0
    
# assert multiple_of_3_or_5(5)==True
# assert multiple_of_3_or_5(3)==True
# assert multiple_of_3_or_5(6)==True
# assert multiple_of_3_or_5(7)==False
# assert multiple_of_3_or_5(11)==False

integers_to_10=list(range(0,10))
integers_to_1000=list(range(0,1000))

def sum_if_multiple_of_3_or_5(list_of_numbers):
    total=0
    for integer in list_of_numbers:
        if multiple_of_3_or_5(integer)==True:
            total+=integer
        else:
            pass
    return total

# assert sum_if_multiple_of_3_or_5(integers_to_10)==23
# assert sum_if_multiple_of_3_or_5(integers_to_1000)==233168
