
;; What is the smallest positive number that is evenly divisible by all of the numbers from to?

#lang racket

(define (divisible-by? n m)
  (= (modulo n m) 0))

;; (equal? (divisible-by? 10 5) true)
;; (equal? (divisible-by? 10 3) false)


;; (andmap (lambda (x)
;;           (divisible-by? x 20)) (list 20 200 2520))

(define (build-list-to number)
  (rest (build-list (+ number 1) values)))

;; (define (number-divisible-by 1-to-number)
;;   (letrec [(start 1)
;;            (list-of-numbers (build-list-to 1-to-number))]
;;     (cond
;;       [(equal? (andmap (lambda (x)
;;                          (divisible-by? st




       
