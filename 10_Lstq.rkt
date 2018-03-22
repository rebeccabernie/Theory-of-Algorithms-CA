#lang racket
; Write a function lstq in Racket that takes as arguments two lists l and m of equal length and containing numbers. It should return d, the distance given by the sum of the square residuals between the numbers in the lists:
; This means take the ith element of m from the ith element of l and square the result for all i. Then add all of those to get d. 
; For example: > (lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8)) 54.61

(define (lstq l m)
    (cond  [(null? l) '()]
        [else (sum (cons (get-power (car l) (car m)) 
            (cond ((null? (cdr l)) (lstq (cdr l)(cdr m)))
            [else '()]
            )
        ))]
    )
)

(define (get-power li mi)
    (* (- li mi) (- li mi))
)

(define (sum powers)
    (if (null? (cdr powers))
        (+ (car powers) 0) ; If there's only one element just return the car + 0 (returning car gives an error, + 0 fixes this)
        (+ (car powers) (sum(cdr powers))) ; If more than one element, add the car to the sum of the cdr (sum cdr loops back on itself)
         
    )
)

(lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))