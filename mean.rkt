#lang racket
; find mean of all the numbers
(define (sum elemList)
    (if
        (null? elemList)
            0
            (+ (car elemList) (sum (cdr elemList)))
    )
)
(define (mean lst)
    (/ (sum lst) (length lst))
)

(mean '(1 2 3 4 5 6))