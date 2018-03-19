#lang racket
; Write a function hamming-weight in Racket that takes a list l as input and returns the number of non-zero elements in it. For example:    (hamming-weight (list 1 0 1 0 1 1 1 0))  =>  5

(define (hamming-weight l1)
    (if (= 0 (car l1))
        (+ (car l1) (hamming-weight (cdr l1)))
        (hamming-weight (cdr l1))
    )
)

(hamming-weight (list 1 0 1 0 1 1 1 0))