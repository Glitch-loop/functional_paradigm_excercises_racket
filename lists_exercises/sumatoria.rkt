#lang Racket

(define (sum n)
    (if(zero? n)
        0
        (+ n (sum (- n 1)))
    )
)

(sum 5)