#lang racket
; Write a procedure inter that takes two lists as arguments. It should return a list containing every element that appears in both lists, exactly once.

; car = first el in list, cdr = rest of list. 
; cons = constructs lists - (cons 'pine '(fir oak maple)) prints (pine fir oak maple). 

; Probably need some stuff at least from previous question?
(define (appearances l1 l2)
  (if (null? l2)
    0
    (if (equal? l1 (car l2))
      (+ 1 (appearances l1 (cdr l2)))
      (appearances l1 (cdr l2)))
    ))

(define (inter l1 l2)
  (if (null? l2)
    '() ; If list2 is null, return empty
    (if (> (appearances (car l1) l2) 0) ; if the 1st el of list1 appears in l2 at least once (multiple doesn't matter, once is enough)
      (display "") ; true = do something...
      (inter (cdr l1) l2) ; False = pass l2 and rest of l1 back to function
    )))

(inter (list 2 3 4 5 7) (list 2 2 4 5 6))