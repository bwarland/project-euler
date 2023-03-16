;; PROJECT EULER problem 003
;; largest prime factor
;; the prime factors of 13195 are 5,7,13, and 29
;; find the largest prime factor of the number 600851475143

;; To find the prime factors of a number, you can follow these steps:

;; Divide the number by the smallest prime number possible, which is 2. If the number is even, divide it by 2 repeatedly until it becomes odd.

;; Next, divide the number by the next smallest prime number, which is 3. If the number is not divisible by 3, continue with the next prime number. If the number is divisible by a prime number, divide it repeatedly by that prime number until it is not divisible anymore.

;; Continue this process, dividing by the next smallest prime number until the quotient is 1. The prime factors of the number are all the prime numbers that were used as divisors in the process.

;; For example, let's find the prime factors of the number 84:

;; Step 1: 84 ÷ 2 = 42
;; Step 2: 42 ÷ 2 = 21
;; Step 3: 21 ÷ 3 = 7
;; The quotient is now 7, which is a prime number, so we stop.

;; Therefore, the prime factors of 84 are 2, 2, 3, and 7 (or written as 2² x 3 x 7).

;; https://stackoverflow.com/questions/54258347/check-for-a-prime-number-using-recursive-helper-function

#lang racket

;; create a list of prime numbers up to 

;; prime?: N -> boolean
;; check if a number is a prime number


