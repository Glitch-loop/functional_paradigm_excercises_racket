#lang Racket

(define (secuenciaDescendente n)
    (cond 
        ((not(= n 1)) (writeln n)(secuenciaDescendente (- n 1)))
        (else (writeln n))
    )
)

(secuenciaDescendente 5)