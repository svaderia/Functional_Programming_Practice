#lang racket
; reverse the given list
(define (reverse ls cum)
  (cond
    ((null? ls) cum)
    (else (reverse (cdr ls) (cons (car ls) cum)))
    )
  )

(reverse '(1 2 3 4) '())