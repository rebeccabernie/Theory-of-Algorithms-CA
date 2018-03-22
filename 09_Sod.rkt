#lang racket
; Write a function sod2 in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s.
; It should return a list containing a '1' where the number of 1’s in a given position in x, y and z contains an odd number of 1’s, and 0 otherwise.
; For example: > (sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1)) '(0 1 1 0 1 0 0 1)

; English... so if 1 in one list -> 1, if 1 in two lists -> 0, if 1 in all three -> 1 ?
(define (sod2 x y z)
    (cond [(null? x) '()] ; All the same length, if one is empty they all are, return empty
        [(= (modulo (+ (car x)(car y)(car z)) 2) 0) (cons 0 (sod2 (cdr x)(cdr y)(cdr z)))] ; Add all elements together, divide by 2, if no remainder number of occurences is even -> cons 0
        [else (cons 1 (sod2 (cdr x)(cdr y)(cdr z)))] ; Otherwise number of occurences must be odd, cons 1
    )
)

(display "(list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1) \n  =>  ")
(sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
; (sod2 (list 0 1 0 1) (list 0 0 1 1) (list 1 0 1 1)) ; Testing, works fine
