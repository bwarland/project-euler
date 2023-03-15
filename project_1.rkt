;; PROJECT EULER 001
;; sum multiples of 3 and 5 under 1000
;; sum of these multiples below 10 is 23
;; SOLVED

#lang racket

; multiple-of-3?: N -> Boolean
; takes a number and returns true or false

(define (multiple-of-3? number)
  (if (= (remainder number 3) 0) #true #false))

;; (equal? (multiple-of-3? 3) #true)
;; (equal? (multiple-of-3? 6) #true)
;; (equal? (multiple-of-3? 7) #false)

(define (multiple-of-5? number)
  (if (= (remainder number 5) 0) #true #false))

;; (equal? (multiple-of-5? 5) #true)
;; (equal? (multiple-of-5? 10) #true)
;; (equal? (multiple-of-5? 11) #false)

(define (multiple-of-3-or-5? number)
  (or (multiple-of-3? number)
      (multiple-of-5? number)))

;; (equal? (multiple-of-3-or-5? 3) #true)
;; (equal? (multiple-of-3-or-5? 6) #true)
;; (equal? (multiple-of-3-or-5? 7) #false)
;; (equal? (multiple-of-3-or-5? 5) #true)
;; (equal? (multiple-of-3-or-5? 10) #true)
;; (equal? (multiple-of-3-or-5? 11) #false)

(define integers-to-1000 (build-list 1000 values))
(define integers-to-10 (build-list 10 values))

(define (sum-divisible-by-3-or-5 list-of-numbers)
  (cond
    [(empty? list-of-numbers) 0]
    
    [(equal? (multiple-of-3-or-5? (first list-of-numbers)) #true) (+ (first list-of-numbers)
                                               (sum-divisible-by-3-or-5 (rest list-of-numbers)))]
    [else (sum-divisible-by-3-or-5 (rest list-of-numbers))]))

(= (sum-divisible-by-3-or-5 integers-to-10) 23)
(= (sum-divisible-by-3-or-5 integers-to-1000) 233168)

;; (sum-divisible-by-3-or-5 integers-to-1000)
