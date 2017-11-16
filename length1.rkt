#lang racket
; find length of the list
(define (length1 ls count)
  (if (null? ls) count
      (length1 (cdr ls) (+ count 1))
      )
  )

(define (length2 ls)
  (if (null? ls) 0
      (+ 1 (length2 (cdr ls))))
  )

(length1 '(1 2 3 4) '0)
(length2 '(1 2 3 4))