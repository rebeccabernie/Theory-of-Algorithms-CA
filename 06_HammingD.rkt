#lang racket
; Write a function hamming-distance in Racket that takes two lists and returns the number of positions in which they diﬀer. Example: (hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0)) => 5 

(define (hamming-distance l1 l2)
    (if (or (null? l1) (null? l2)) ; Checks if either list is null
        0 ; If so do nothing..?
        (if (= (car l1) (car l2)) ; Otherwise if the two elements are equal...
            (hamming-distance (cdr l1)(cdr l2)) ; Don't add to count, check remainder of list
            (+ 1 (hamming-distance (cdr l1)(cdr l2))) ; Add to count, check remainder of list
        )
    )
)

(hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))
