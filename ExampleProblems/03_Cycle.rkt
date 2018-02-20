#lang racket
; Write, from scratch, two functions in Racket. The first is called lcycle. It takes a list as input and returns the list cyclically shifted one place to the left. The second is called rcycle, and it shifts the list cyclically shifted one place to the right.

; (lcycle (list 1 2 3 4 5)) --> '(2 3 4 5 1)
; (rcycle (list 1 2 3 4 5)) --> '(5 1 2 3 4)

(define (lcycle l1)
    l1
)

(define (rcycle l2)
    l2
)

(lcycle (list 1 2 3 4 5))
(rcycle (list 1 2 3 4 5))

