#lang racket
; find factorial of the number
(define (factorial num)
    (if (zero? num) 1
        (* num (factorial (- num 1))))
)

(factorial 5)