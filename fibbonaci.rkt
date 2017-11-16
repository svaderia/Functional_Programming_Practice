#lang racket
; program to generate fibbonaci numbers
(define (fibbonaci num)
    (if (<= num 1)
        1
        (+ (fibbonaci (- num 2)) (fibbonaci (- num 1)))
    )
)
(fibbonaci 5)