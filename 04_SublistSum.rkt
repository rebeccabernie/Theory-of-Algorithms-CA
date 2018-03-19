#lang racket
; Write a function sublsum in Racket that takes a list (of integers) as input and returns a list of sublists of it that sum to zero. For this problem, you can use the combinations built-in function. Note the order of the sublists and their elements doesn't matter.
; For example:  (sublsum (list 1 2 3 4 -5))  =>     '((2 3 -5) (-5 1 4))
;               (sublsum (list 1 2 3 4 5))   =>     '()

(define (sublsum l1)
    ;(combinations l1)
    (if (null? l1)
        '()
        (split (cdr (combinations l1))) ; First el will always be the empty set..?
    )
)

(define (split combs)
    (if (null? combs)
        0
        (sum(car combs))
    )
)


(define (sum comb)
    comb
    (cond [(pair? comb) (+ (sum (cdr comb)) (car comb))]
          [(not null? (cdr comb)) (+ (sum (cdr comb)) (car comb))]
    )
)

;(sum (list 1 2 3 4))
;(sum (list '()))

(sublsum (list 1 2 3 4 -5))