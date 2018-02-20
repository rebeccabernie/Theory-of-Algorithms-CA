#lang racket
; Write a function called appearances that returns the number of times its first argument appears as a member of its second argument.

(define (appearances i l)
  (if (null? l) ; Check if list is null first, if so first argument appears 0 times
    0
    (display "not null")
    ))

(appearances 1 (list 1 1 2 3 4))