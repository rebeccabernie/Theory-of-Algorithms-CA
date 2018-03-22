#lang racket
; Write, from scratch, a function in Racket that takes a positive integer n0 (x) as input and returns a list by recursively applying the following operation, starting with the input number.
; if x is odd --> 3(x) + 1
; if x is even --> x / 2
; End the recursion when (or if) the number becomes 1. Call the function collatz-list. Collatz-list should return a list whose first element is n0, the second element is n1, and so on.

(define (collatz-list x)
  (cons x (if (= x 1) 
    null ; if x is 1 don't add anything else
    (if (= (modulo x 2) 0) ; add one of these depending on if given is even or odd
      (collatz-list(/ x 2))
      (collatz-list(+ 1 (* 3 x)))
    )
  ))
)

(display "5  =>  ")
(collatz-list 5)
(display "9  =>  ")
(collatz-list 9)
(display "2  =>  ")
(collatz-list 2)