#lang racket
; check whether given ele is member of list or not
(define (mem ls ele)
    (cond
        ((null? ls) #f)
        ((eq? ele (car ls)) #t)
        (else (mem (cdr ls) ele))
    )
)

(mem '(1 2 a c2) 'c2)