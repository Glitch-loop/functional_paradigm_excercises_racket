#lang Racket
(define (generaNa1 n) 
    (if (= n 1)
    (cons 1 null)
    (cons n (generaNa1 (- n 1)))
    )
)
(generaNa1 5)