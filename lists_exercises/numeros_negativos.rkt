#lang Racket
;Contar el numero de numeros negativos de una lista

(define (numNegativos lista)
    (if (null? (cdr lista))
        (if (< (car lista) 0)
            1
            0
        )
        (if (< (car lista) 0)
            (+ 1 (numNegativos (cdr lista)))
            (numNegativos (cdr lista))
        )
    )
)


(numNegativos '(1 -1 -1 -1  0 0 0 -2))