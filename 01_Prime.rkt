#lang racket
; Write, from scratch, a function in Racket that uses a brute-force algorithm that takes a single positive integer and return true if the number is a prime and false otherwise. Call the function decide-prime.

; Prime number = number greater than 1 whose only factors are itself and 1. 1 is neither prime nor composite, 2 is prime.

; Brute force - take every number greater than 1 and less than the given number and see if it divides into the given number evenly..?

(define(decide-prime p)
  (if (= p 1) (display "1 is neither prime nor composite") 
      (if (= p 2) (display "prime") (display "")))
  )

(display "1: ")
(decide-prime 1)
(display "\n2: ")
(decide-prime 2)