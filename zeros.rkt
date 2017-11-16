#lang racket
; count number of zeros in the given list
(define (zeros ls count)
  (cond
    ((null? ls) count)
    ((zero? (car ls))
     (zeros (cdr ls) (+ count 1)))
     (else (zeros (cdr ls) count)))
  )

(zeros '(1 0 0 0 1 1 2 0) '0)