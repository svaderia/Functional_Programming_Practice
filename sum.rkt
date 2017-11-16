#lang racket
; find sum of all the member of the list
(define (sum elemList)
    (if
        (null? elemList)
            0
            (+ (car elemList) (sum (cdr elemList)))
    )
)

(sum '(1 2 3 4))