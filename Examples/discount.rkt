#lang racket

(define (discount orig disc) (- orig (* orig(/ disc 100.0) )))

(discount 10 5)

(discount 29.90 50)