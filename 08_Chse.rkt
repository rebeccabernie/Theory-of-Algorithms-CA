#lang racket
; Write a function chse in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s.
; It should return a list containing the elements of y in the positions where x is 1 and the elements of z otherwise.
; For example: > (chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))  =>  '(0 1 0 1 0 0 1 1) 

(define (chse l1 l2 l3)
    l1
)
(chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))