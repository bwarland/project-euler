;; 2520 is the smallest number that can be divided by each of the numbers from 1 to 10  without any remainder.
;; What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

#lang racket

(define (divisible-by? n m)
  (= (modulo n m) 0))

;; (equal? (divisible-by? 10 5) true)
;; (equal? (divisible-by? 10 3) false)


;; (andmap (lambda (x)
;;           (divisible-by? x 20)) (list 20 200 2520))

(define (divisible-by-all-in-list? number a-list-of-numbers)
  (andmap (lambda (x)
            (divisible-by? number x)) a-list-of-numbers))

;; (equal? (divisible-by-all-in-list? 10 (list 2 5 10)) #true)
;; (equal? (divisible-by-all-in-list? 10 (list 2 5 7 10)) #false)

(define list-to-10 (rest (build-list 11 values)))
(define list-to-20 (rest (build-list 21 values)))

;; smallest-multiple: alist-of-numbers -> number
;; checks if a number is integer divisible by a list of numbers

;; kladd
;; (define (smallest-multiple number a-list-of-numbers)
;;   (cond
;;     [(equal? (divisible-by-all-in-list? number a-list-of-numbers) #true) number]
;;     [else (smallest-multiple (+ number 1) a-list-of-numbers)]))

(define (smallest-multiple a-list-of-numbers)
  (define (inner-iteration number a-list-of-numbers)
    (cond
      [(equal? (divisible-by-all-in-list? number a-list-of-numbers) #true) number]
      [else (inner-iteration (+ number 1) a-list-of-numbers)]))
    (inner-iteration 1 a-list-of-numbers))
  
;; (equal? (smallest-multiple list-to-10) 2520) ;; #true
;; (equal? (smallest-multiple list-to-20) 232792560);; #true

       
