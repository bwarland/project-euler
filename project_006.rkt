#lang racket

;; Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum

;; Formulas
;; ======================================================
;; 1^2 + 2^2 + 3^2 + ... + n^2 = n(2n+1)(n+1)/6

;; 1+2+3+ ... +n=n(n+1)/2

(define (sum-of-squares n)
  (/ (* n (+ (* 2 n) 1) (+ n 1)) 6))

(= (sum-of-squares 10) 385)

(define (sum-of-numbers n)
  (/ (* n (+ n 1)) 2))

(= (sum-of-numbers 10) 55)

(define (square-of-sum n)
  (sqr (sum-of-numbers n)))

(= (square-of-sum 10) 3025)

(define (diff-sum-of-squares-square-of-sums n)
  (- (square-of-sum n)
     (sum-of-squares n)))

(= (diff-sum-of-squares-square-of-sums 10) 2640)

(diff-sum-of-squares-square-of-sums 100)
