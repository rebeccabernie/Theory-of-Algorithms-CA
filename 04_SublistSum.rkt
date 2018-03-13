#lang racket
; Write a function sublsum in Racket that takes a list (of integers) as input and returns a list of sublists of it that sum to zero. For this problem, you can use the combinations built-in function. Note the order of the sublists and their elements doesn't matter.
; For example:  (sublsum (list 1 2 3 4 -5))  =>     '((2 3 -5) (-5 1 4))
;               (sublsum (list 1 2 3 4 5))   =>     '()

(define (sublsum l1)
    (combinations l1)
    (null? l1)
        '()
        (sum (cdr (combinations l1))) ; First el will always be the empty set..?
)

(define (sum comb)
  (if (null? comb) ; if the current combination is null
    '() ; output 0 - sum of nothing is nothing
    (if (null? (cdr (car comb)))
        (sum (cdr comb))
        (if (= 0 (+ (car (car comb)) (sum (cdr (car comb))))) ; else add recursively sum the cdr each time, add to car
            (car comb) ; if the sum of the combination is 0, output the combination
            (sum(cdr comb)) ; else not 0, pass back in
        )
    )
  )
)

(sublsum (list 1 2 3 4 -5))