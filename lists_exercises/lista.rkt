#lang Racket
(define data (list 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16))

(define (contar lista) 
    (if (null? lista)
        0
        (+ 1 (contar (cdr lista)))
    )
)

(contar data)