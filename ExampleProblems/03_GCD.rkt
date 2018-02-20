#lang racket
; Define a function grcomdiv that takes two integers and returns their greatest common divisor.

; Euclid's method - GCD will always divide into difference of two given numbers. Bigger number must be first.
; Get remainder of 1st into 2nd - 25 % 20 = 20 * 1, remainder 5 - (25, 20) becomes (5, 20) -> (20, 5)
; Repeat - 1st into 2nd -> 20 % 5 = 0 - (0, 5) -> GCD = 5.

(define (grcomdiv a b)
  (if (< a b)
      (grcomdiv b a)
      (if(= b 0)
         a ; return a, GCD of (4, 0) is 4
         (grcomdiv(modulo a b) b)))) ; Keep going - pass modulo/remainder of 1st into 2nd and b into function again

(grcomdiv 10 15)
(grcomdiv 64 30)