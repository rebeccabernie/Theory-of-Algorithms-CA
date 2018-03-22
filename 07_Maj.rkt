 #lang racket
 ; Write a function maj in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s.
 ; It should return a list containing a 1 where two or more of x, y and z contain 1’s, and 0 otherwise.
 ; For example: > (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1)) => '(0 0 0 1 0 1 1 1) 

 (define (maj l1 l2 l3)
 ; Idea loosely adapted from https://stackoverflow.com/a/16693919
    (cond [(null? l1) '()] ; If the list is null return an empty list - all lists of equal length so if one is empty, they all are
        [(= (car l1)(car l2))(cons (car l1)(maj (cdr l1)(cdr l2)(cdr l3)))] ; If car 1 and car 2 are the same, cons that to the list, call the function with the remaining of each list
        [(= (car l1)(car l3))(cons (car l1)(maj (cdr l1)(cdr l2)(cdr l3)))] ; Same except 1 and 3
        [(= (car l2)(car l3))(cons (car l2)(maj (cdr l1)(cdr l2)(cdr l3)))] ; Same except 2 and 3
        [else (maj (cdr l1)(cdr l2)(cdr l3))] ; Else nothing in common, check the remaining of each
    )
 )
 
(display "(list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1) \n  =>  ")
(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
;(maj (list 0 1 2 3)(list 0 2 3 4)(list 0 2 5 1)) ; => '(0 2) 