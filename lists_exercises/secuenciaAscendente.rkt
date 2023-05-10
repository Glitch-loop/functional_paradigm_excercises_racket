#lang Racket

(define (secuenciaAscendente n) 
    (cond 
        ((not(= n 1)) (secuenciaAscendente (- n 1)) (writeln n))
        (else (writeln n))
    )
)

(secuenciaAscendente 100)