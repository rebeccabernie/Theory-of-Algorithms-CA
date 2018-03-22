#lang racket
; Write a function chse in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s.
; It should return a list containing the elements of y in the positions where x is 1 and the elements of z otherwise.
; For example: > (chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))  =>  '(0 1 0 1 0 0 1 1) 


; In plain english... if el in x is 1, return el at same index in y, if x is 0, return el at same index in z
; Very similar to 07_Maj.rkt
(define (chse x y z)
    (cond [(null? x) '()] ; If the list is null return an empty list - all lists of equal length so if one is empty, they all are
        [(= (car x) 1)(cons (car y)(chse (cdr x)(cdr y)(cdr z)))] ; If car x is 1, cons the car y and pass the cdrs of each list back into chse 
        [else (cons (car z)(chse (cdr x)(cdr y)(cdr z)))] ; Else (x must be 0), cons the car z and pass the cdrs of each list back to chse
    )
)

(display "(list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1) \n  =>  ")
(chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
;(chse (list 0 1 0 1) (list 1 2 3 4) (list 5 6 7 8)) ; Testing to make sure