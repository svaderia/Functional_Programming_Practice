#lang racket
; find gcd of two number (I'm using Euclid's algorithm)
(define (gcd a b)
    (cond
        ((eq? a b) a)
        ((> a b) (gcd (- a b) b))
        (else (gcd a (- b a)))
    )
)

(gcd 15 25)