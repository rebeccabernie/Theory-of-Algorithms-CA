#lang racket
; Write a function hamming-distance in Racket that takes two lists and returns the number of positions in which they diﬀer. Example: (hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0)) => 5 

(define (hamming-distance l1 l2)
    (cond   
        [(null? l1) (length l2)] ; Differs in (length l2) number of places
        [(null? l2) (length l1)] ; Same as above, swapped
        [(= (car l1) (car l2)) (hamming-distance (cdr l1)(cdr l2))] ; If cars the same, don't add to count, check remainder of list
        [else (+ 1 (hamming-distance (cdr l1)(cdr l2)))] ; Add to count, check remainder of list
    )
)

(hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))
;(hamming-distance (list 1 0 1 0 1 1 1 0) (list ))
