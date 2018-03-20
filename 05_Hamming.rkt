#lang racket
; Write a function hamming-weight in Racket that takes a list l as input and returns the number of non-zero elements in it. For example:    (hamming-weight (list 1 0 1 0 1 1 1 0))  =>  5

(define (hamming-weight l1)
    (if (null? (cdr l1)) ; If only there's only one element in the list
        (if (= 0 (car l1)) ; If that element is 0
            0 ; Output 0 - no non-zero elements
            1 ; Output 1 - one non-zero elements
        )
        (sum l1) ; If more than one element, sum the non-zeroes
    )

)

(define (sum l2)
    (if (null? (cdr l2)) ; If there's only one element in given list l2
        (+ (car l2) 0) ; Add the element => 0 + 0 = 0, 0 + 1 = 1 => will either add one or zero to count
        (if (= 1 (car l2)) ; Otherwise check if the car is 1
            (+ (car l2) (sum (cdr l2))) ; If it is sum it and pass the remainder back to sum
            (sum (cdr l2)) ; Otherwise don't count it, move on and check remaining elements
        )
    )
)

(hamming-weight (list 1 0 1 0 1 1 1 0))
(hamming-weight (list 5 0 1 0 4 0 1 0))
;(hamming-weight (list 0 0 0 0 0 0 0 0))
;(hamming-weight (list 1 1 1 1 1 1 1 1))