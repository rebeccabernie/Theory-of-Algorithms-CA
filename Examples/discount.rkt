#lang racket

;; Define a procedure discount that takes two args (item price and discount), return new price.

(define (discount orig disc) (- orig (* orig(/ disc 100.0) )))
;; Get the discount - divide discount by 100 to get amount in decimal (5% = 0.05), multiply by the original, take answer from the original.

(discount 10 5)

(discount 29.90 50)