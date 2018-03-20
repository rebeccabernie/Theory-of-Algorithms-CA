 #lang racket
 ; Write a function maj in Racket that takes three lists x, y and z of equal length and containing only 0’s and 1’s.
 ; It should return a list containing a 1 where two or more of x, y and z contain 1’s, and 0 otherwise.
 ; For example: > (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1)) => '(0 0 0 1 0 1 1 1) 

 (define (maj list1 list2 list3)
    (element-in-common? list1 list2 list3)
 )

 (define (element-in-common? l1 l2 l3)
  (cond [(null? l1) '()] ;
        [(= (car l1)(car l2))(cons (car l1)(element-in-common? (cdr l1)(cdr l2)(cdr l3)))]
        [(= (car l1)(car l3))(cons (car l1)(element-in-common? (cdr l1)(cdr l2)(cdr l3)))]
        [(= (car l2)(car l3))(cons (car l2)(element-in-common? (cdr l1)(cdr l2)(cdr l3)))]
        [else (element-in-common? (cdr l1)(cdr l2)(cdr l3))]
  )
 )

(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
;(maj (list 0 1 2 3)(list 0 2 3 4)(list 0 2 5 1))