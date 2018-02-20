#lang racket
; Re-write the following expressions in Racket and evaluate them using a Racket interpreter/compiler.
;(a) (3 × (5 + (10 ÷ 5)))
;(b) (2 + 3 + 4 + 5)
;(c) (1 + (5 + (2 + (10 ÷ 3))))
;(d) (1 + (5 + (2 + (10 ÷ 3.0))))
;(e) (3 + 5) × (10 ÷ 2)
;(f) (3 + 5) × (10 ÷ 2) + (1 + (5 + (2 + (10 ÷ 3))))


; a)
(display "(3 × (5 + (10 ÷ 5))) = ")
(* 3 (+ 5 (/ 10 5)))

; b)
(display "(2 + 3 + 4 + 5) = ")
( + 2 3 4 5) ; only one operator needed for multiple operands - http://www.gnu.org/software/mit-scheme/documentation/mit-scheme-ref/Numerical-operations.html