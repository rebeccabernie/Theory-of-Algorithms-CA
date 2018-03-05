#lang racket
; Write, from scratch, two functions in Racket. The first is called lcycle. It takes a list as input and returns the list cyclically shifted one place to the left. The second is called rcycle, and it shifts the list cyclically shifted one place to the right.

; (lcycle (list 1 2 3 4 5)) --> '(2 3 4 5 1)
; (rcycle (list 1 2 3 4 5)) --> '(5 1 2 3 4)

(define (lcycle l1)
    (flatten-list (cons (cdr l1) (car l1))) ; Take the car of list and add it to the cons of the list, flatten that
)


(define (rcycle l2)
    (recursive l2 (length l2))
)

(define (recursive l2 i)
    (if (= i 1)
        l2
        (recursive (flatten-list(cons (cdr l2) (car l2))) i)
    )
)

; Working off https://stackoverflow.com/a/5007129 / https://stackoverflow.com/a/13175325
(define (get-last l2)
    (cond ((null? (cdr l2)) (car l2))
        (else (get-last (cdr l2)))))

; Flatten a list adapted from https://stackoverflow.com/a/28753817
; Without flatten functionality, lcycle returns '((2 3 4 5) 1) - list within a list
(define (flatten-list l)
  (cond ((null? l) '()) 
        ((pair? l)
         (append (flatten-list (car l)) (flatten-list (cdr l))))
        (else (list l))))

;(lcycle (list 1 2 3 4 5))
(rcycle (list 1 2 3 4 5))

