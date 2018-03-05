#lang racket
; Write a function called appearances that returns the number of times its first argument appears as a member of its second argument.

; car = first el in list, cdr = rest of list. https://www.gnu.org/software/emacs/manual/html_node/eintr/car-_0026-cdr.html#car-_0026-cdr
; cons = constructs lists - (cons 'pine '(fir oak maple)) prints (pine fir oak maple). https://www.gnu.org/software/emacs/manual/html_node/eintr/cons.html#cons

(define (appearances i l)
  (if (null? l) ; Check if list is null first, if so first argument appears 0 times
    0
    (if (equal? i (car l)) ; if i = first el of list
      (+ 1 (appearances i (cdr l))) ; true = + 1, call function again with remaining els in list
      (appearances i (cdr l))) ; false = just call function again
    ))

(appearances 3 (list  2 3 4 5 3))
;(appearances 3 (list 1 1 2 3 4 3 43))