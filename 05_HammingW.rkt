#lang racket
; Write a function hamming-weight in Racket that takes a list l as input and returns the number of non-zero elements in it. For example:    (hamming-weight (list 1 0 1 0 1 1 1 0))  =>  5

(define (hamming-weight l1)
    (if (null? l1)
        0 ; If given empty list, return 0
        (if (null? (cdr l1)) ; If only there's only one element in the list
            (if (= 0 (car l1)) ; If that element is 0
                0 ; Output 0 - no non-zero elements
                1 ; Output 1 - one non-zero elements
            )
            (sum l1) ; If more than one element, sum the non-zeroes
        )
    )
)

; For checking binary lists. Returns number of 1s in a given list.
; Example: (list 1 1 0 0 4) will return a count of 2, (list 1 0 1 0 1 1) will return a count of 4.
(define (sum l2)
    (if (null? (cdr l2)) ; Check if there's only one element in given list l2
        (+ (car l2) 0) ; If only one el, count it => 0 + 0 = 0, 0 + 1 = 1 => will either add one or zero to count
        (if (= 1 (car l2)) ; Otherwise check if the car is 1
            (+ (car l2) (sum (cdr l2))) ; If car = 1, count it and pass the remainder back to sum
            (sum (cdr l2)) ; Otherwise don't count it, move on and check remaining elements
        )
    )
)

 #| 
; For checking lists containing non-binary numbers - any non-zeroes will add to the count.
; Remove #| and |#, comment out previous (define (sum l2)) block to test.
; Multi-line comments - https://www.gnu.org/software/mit-scheme/documentation/mit-scheme-ref/Comments.html
(define (sum l2)
    (if (null? (cdr l2)) ; Check if there's only one element in given list l2
        (if (> (car l2) 0) ; If only one el, check if greater than 0
            (+ (/ (car l2)(car l2)) 0) ; If number greater than 0, divide by itself to get 1 (5/5 = 1 etc), add to count
            (+ (car l2) 0) ; Else count it, 0 + 0 = 0, 0 + 1 = 1 => will either add one or zero to count 
        )
        (if (> (car l2) 0) ; If more than one element in given list - check if car is greater than 0
            (+ (/ (car l2)(car l2)) (sum (cdr l2))) ; If true, divide by itself to get 1, sum it and pass the remainder back to sum
            (sum (cdr l2)) ; Otherwise don't add it, go back and check the remaining elements
        )  
    )
)

(hamming-weight (list 5 0 1 0 4 0 1 0)) ; Returns 4 (4 non zero elements, true), would only return 2 if evaluated using first (define (sum l2)).

|#

(display "(list 1 0 1 0 1 1 1 0) \n  =>  ")
; Check binary list
(hamming-weight (list 1 0 1 0 1 1 1 0))