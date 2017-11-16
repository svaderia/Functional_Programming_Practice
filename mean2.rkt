#lang racket
; mean of only  numbers present in the list

(define (mean lst sum length)
    (cond
        ((null? lst) 
            (if (> length 0) (/ sum length) #f)
        )
        ((integer? (car lst))
            (mean (cdr lst) (+ sum (car lst)) (+ length 1))
        )
        (else
            (mean (cdr lst) sum length)
        )
    )
)

(mean '(a b v f ) 0 0)