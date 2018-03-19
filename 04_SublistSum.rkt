#lang racket
; Write a function sublsum in Racket that takes a list (of integers) as input and returns a list of sublists of it that sum to zero. For this problem, you can use the combinations built-in function. Note the order of the sublists and their elements doesn't matter.
; For example:  (sublsum (list 1 2 3 4 -5))  =>     '((2 3 -5) (-5 1 4))
;               (sublsum (list 1 2 3 4 5))   =>     '()

(define (sublsum l1)
    ;(combinations l1)
    (if (null? l1)
        '() ; If the given list is empty return an empty list
        (split (cdr (combinations l1))) ; First el will always be the empty set so only need to pass the cdr to the split function
    )
)

(define (split combs)
    (if (null? combs)
        '() ; If there are no combinations (given an empty list), output empty list
        (if (= 0 (sum(car combs)))
            (cons (car combs) (split (cdr combs))) ; if the sum of a given combination is 0, add it to a list, go back and check the rest of the combinations
            (split (cdr combs)) ; If sum of combination =/= 0, go back and check rest of list
        )
    )
)

; Sums the elements of a given list
(define (sum comb)
    (if (null? (cdr comb))
        (+ (car comb) 0) ; If there's only one element just return the car + 0 (returning car gives an error, + 0 fixes this)
        (+ (car comb) (sum(cdr comb))) ; If more than one element, add the car to the sum of the cdr (sum cdr loops back on itself)
         
    )
)

(sublsum (list 1 2 3 4 -5))
(sublsum (list 1 2 3 4 5))
;(sublsum (list -1 1 -2 2 3 -5 4)) ; Testing on larger list to make sure, works fine