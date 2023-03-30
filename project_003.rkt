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

;; in-list?: N (listof N) -> boolean
;; is a given number in a list?

(define (in-list? number a-list)
  (cond
    [(empty? a-list) #false]
    [(= number (first a-list)) #true]
    [else (in-list? number (rest a-list))]))

;; (equal? (in-list? 1 '()) #false)
;; (equal? (in-list? 1 (list 2 3 4)) #false)
;; (equal? (in-list? 1 (list 1 2 3)) #true)
;; (equal? (in-list? 1 (list 2 3 1)) #true)

;; add-if-not-in: N (listof N) -> (listof N)
;; add a number to a list if it is not in

(define (add-if-not-in-list number a-list)
  (cond
    [(not (in-list? number a-list)) (cons number a-list)]
    [else a-list]))

;; (equal? (add-if-not-in-list 1 (list 2 3)) (list 1 2 3))
;; (equal? (add-if-not-in-list 1 (list 1 3)) (list 1 3))

;; ,----
;; | divisible-by-numberslist: N (listof N) -> boolean
;; | check if a number is divisible by all numbers in a list
;; `----


;; (define (divisible-by-numberslist number alon)
;;   (cond
;;     [(empty? alon) #false]
;;     [(and (= (modulo number (first alon)) 0)
;;           (divisible-by-numberslist number (rest alon))) #true] ;; denne fungerer ikke fordi
;;                                                                 ;; den alltid vil slutte med #false
;;     [else (divisible-by-numberslist number (rest alon))]))

;; ,----
;; | her kan jeg sikkert bruke andmap, men jeg burde også prøve å bygge prossessen opp
;; | fra bunn av selv
;; `----



;; (equal? (divisible-by-numberslist 10 (list 1 2 5)) #true)
;; (equal? (divisible-by-numberslist 10 (list 1 2 5 6)) #false)

;; create a list of prime numbers up to N
;; function for determining prime

;; prime?: N -> boolean
;; check if a number is a prime number

;; (define (prime? number)
;;   (define list-primes (list empty)
;;   (cond
;;     [(

;; (equal? (prime? 2) #true)
;; (equal? (prime? 3) #true)
;; (equal? (prime? 5) #true)
;; (equal? (prime? 7) #true)



