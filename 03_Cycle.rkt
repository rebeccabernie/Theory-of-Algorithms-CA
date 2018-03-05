#lang racket
; Write, from scratch, two functions in Racket. The first is called lcycle. It takes a list as input and returns the list cyclically shifted one place to the left. The second is called rcycle, and it shifts the list cyclically shifted one place to the right.

; (lcycle (list 1 2 3 4 5)) --> '(2 3 4 5 1)
; (rcycle (list 1 2 3 4 5)) --> '(5 1 2 3 4)

(define (lcycle l1)
    (flatten-list (cons (cdr l1) (car l1))) ; Take the car of list and add it to the cons of the list, flatten that
)


; Working off https://stackoverflow.com/a/5007129
(define (rcycle lst)
    (flatten-list (cons
    (if (null? (cdr lst))
        '()
        (cons (car lst) (rcycle (cdr lst))))
        
        (cdr lst))))

; Flatten a list adapted from https://stackoverflow.com/a/28753817
; Without flatten functionality, lcycle returns '((2 3 4 5) 1) - list within a list
(define (flatten-list l)
  (cond ((null? l) '()) 
        ((pair? l)
         (append (flatten-list (car l)) (flatten-list (cdr l))))
        (else (list l))))

(lcycle (list 1 2 3 4 5))
(rcycle (list 1 2 3 4 5))

