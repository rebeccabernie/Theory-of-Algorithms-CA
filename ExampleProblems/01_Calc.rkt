#lang racket
; Re-write the following expressions in Racket and evaluate them using a Racket interpreter/compiler.
;(a) (3 × (5 + (10 ÷ 5)))
;(b) (2 + 3 + 4 + 5)
;(c) (1 + (5 + (2 + (10 ÷ 3))))
;(d) (1 + (5 + (2 + (10 ÷ 3.0))))
;(e) (3 + 5) × (10 ÷ 2)
;(f) (3 + 5) × (10 ÷ 2) + (1 + (5 + (2 + (10 ÷ 3))))


; a)
(display "a) (3 × (5 + (10 ÷ 5))) = (* 3 (+ 5 (/ 10 5))) = ")
(* 3 (+ 5 (/ 10 5)))

; b)
(display "\nb) (2 + 3 + 4 + 5) = ( + 2 3 4 5) = ")
( + 2 3 4 5) ; only one operator needed for multiple operands - http://www.gnu.org/software/mit-scheme/documentation/mit-scheme-ref/Numerical-operations.html

; c)
(display "\nc) (1 + (5 + (2 + (10 ÷ 3)))) = (+ 1 (+ 5 (+ 2 (/ 10 3)))) = ")
(+ 1 (+ 5 (+ 2 (/ 10 3))))

; d)
(display "\nd) (1 + (5 + (2 + (10 ÷ 3.0)))) = (+ 1(+ 5(+ 2(/ 10 3.0)))) = ")
(+ 1(+ 5(+ 2(/ 10 3.0))))

; c deals with whole numbers, produces fraction, d deals with a specified decimal (3.0), produces decimal.

; e)
(display "\ne) (3 + 5) × (10 ÷ 2) = (* (+ 3 5 )(/ 10 2)) = ")
(* (+ 3 5 )(/ 10 2))