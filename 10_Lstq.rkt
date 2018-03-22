#lang racket
; Write a function lstq in Racket that takes as arguments two lists l and m of equal length and containing numbers. It should return d, the distance given by the sum of the square residuals between the numbers in the lists:
; This means take the ith element of m from the ith element of l and square the result for all i. Then add all of those to get d. 
; For example: > (lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8)) 54.61

(define (lstq l m)
    (cond   [(null? l) 0] ; If the first list is null, output 0, sum of nothing is nothing.
            [else (sum (get-list l m))] ; Otherwise pass the lists to get-list, sum the returned list
    )
)

(define (get-list n o) ; Creates list based on given equation: (l[i] - m[i]) ^2. x^2 is the same as x * x.
    (if (null? n)
        '() ; If list n is null, output empty list
        (cons (* (- (car n) (car o)) (- (car n) (car o))) (get-list (cdr n)(cdr o))) ; Otherwise perform operation on two given elements, add result to new list, pass remainder of lists back to get-list
    )
)

; Same sum function as 04_SublistSum.rkt
(define (sum newlist)
    (if (null? (cdr newlist))
        (+ (car newlist) 0) ; If there's only one element just return the car + 0 (returning car gives an error, + 0 fixes this)
        (+ (car newlist) (sum(cdr newlist))) ; If more than one element, add the car to the sum of the cdr (sum cdr loops back on itself)
         
    )
)

(display "(list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8) \n  =>  ")
(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
; (lstq (list 10 5 4) (list 6 3 1)) ; = 29, works fine