#lang racket
; Write a function sod2 in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s. It should return a list containing a '1' where the number of 1’s in a given position in x, y and z contains an odd nubmer of 1’s, and 0 otherwise.
; For example: > (sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1)) '(0 1 1 0 1 0 0 1)

(define (sod2 l1 l2 l3)
    l1
)

(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
