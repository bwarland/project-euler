
;; What is the smallest positive number that is evenly divisible by all of the numbers from to?

#lang racket

(define (divisible-by? n m)
  (= (modulo n m) 0))

(equal? (divisible-by? 10 5) true)
(equal? (divisible-by? 10 3) false)


(andmap (lambda (x)
          (divisible-by? x 20)) (list 20 200 2520))

;; (define list-to-20 (build-list 21 values))
;; 
;; (define (divisible-by-all a-list)
;;   (cond
;;     [



       
