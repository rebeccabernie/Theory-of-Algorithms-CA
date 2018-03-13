#lang racket
; Write a function sublsum in Racket that takes a list (of integers) as input and returns a list of sublists of it that sum to zero. For this problem, you can use the combinations built-in function. Note the order of the sublists and their elements doesn't matter.
; For example:  (sublsum (list 1 2 3 4 -5))  =>     '((2 3 -5) (-5 1 4))
;               (sublsum (list 1 2 3 4 5))   =>     '()

(define (sublsum l1)
    (combinations l1)
    (if (null? l1)
        '()
        (sum (cdr (combinations l1))) ; First el will always be the empty set..?
    )
)

(define (sum comb)
    (cond   ((null? comb) '())) ; if the comb is null output empty
            ((null? (car comb)) (sum(cdr comb))) ; if the first el of the comb is null pass the cdr back in
            ((null? (cdr (car comb))) (sum(cdr comb))) ; if there's only one digit in the element pass the cdr back in
            
                (if (= 0 (+ (car (car comb)) (sum (cdr (car comb))))) ; else add recursively sum the cdr each time, add to car
                    (car comb) ; if the sum of the combination is 0, output the combination
                    (sum(cdr comb)) ; else not 0, pass back in
                )
            
)

(sublsum (list 1 2 3 4 -5))