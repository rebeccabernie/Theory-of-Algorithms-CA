#lang racket
; Write a function hamming-distance in Racket that takes two lists and returns the number of positions in which they diﬀer. Example: (hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0)) => 5 


(define (hamming-distance l1 l2)
    (if (null? (cdr l1))
        (+ (car l1) 0)
        (if (= (car l1) (car l2))
            (hamming-distance (cdr l1)(cdr l2))
            (+ (car l1)(hamming-distance (cdr l1)(cdr l2)))
        )
    )
)

(hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))