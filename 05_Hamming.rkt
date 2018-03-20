#lang racket
; Write a function hamming-weight in Racket that takes a list l as input and returns the number of non-zero elements in it. For example:    (hamming-weight (list 1 0 1 0 1 1 1 0))  =>  5

(define (hamming-weight l1)
    (if (null? (cdr l1))
        (if (= 0 (car l1))
            0
            1
        )
        (sum l1)
    )

)

(define (sum l2)
    (if (null? (car l2))
        '()
        (if (= 0 (car l2))
            (+ (car l2) (sum (cdr l2)))
            (sum (cdr l2))
        )
    )
)

(hamming-weight (list 1 0 1 0 1 1 1 0))