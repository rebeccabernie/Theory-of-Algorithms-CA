#lang racket
; Write, from scratch, a function in Racket that uses a brute-force algorithm that takes a single positive integer and return true if the number is a prime and false otherwise. Call the function decide-prime.

; Prime number = number greater than 1 whose only factors are itself and 1. 1 is neither prime nor composite, 2 is prime.

; Brute force - take every number greater than 1 and less than the given number and see if it divides into the given number evenly..?

(define (check p n)
  (if (= p n) ; if the given number and its divisor are the same
    (display "Prime") ; #t
    (if (= (modulo p n) 0)
    ; If given number and current iteration divide without remainder
      (display "Not a prime") ; #f
      (check p (+ n 1)) ; check again with next iteration
    )
  )
)

(define(decide-prime p)
  (if (< p 2) 
    (display "Not a prime") ; Any number less than 2 = not a prime
    (check p 2) ; Check to see if prime
  )
) 

(display "1:  ")
(decide-prime 1)
(display "\n2:  ")
(decide-prime 2)
(display "\n42: ")
(decide-prime 42)
(display "\n43: ")
(decide-prime 43)
(display "\n71: ")
(decide-prime 71)
(display "\n72: ")
(decide-prime 72)