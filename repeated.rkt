#lang racket
; If a list contains repeated elements they should be replaced with a single copy of the element. 
; The order of the elements should not be changed.

(define (replace lst cum)
    (cond
        ((null? lst) (reverse cum))
        ((null? cum) (replace (cdr lst) (cons (car lst) cum)))
        ((eq? (car lst) (car cum))
            (replace (cdr lst) cum))
        (else (replace (cdr lst) (cons (car lst) cum)))
    )
)

(replace '(1 2 3 4 4 4 5) '( ))