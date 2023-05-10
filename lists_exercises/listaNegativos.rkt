#lang Racket
;Hacer una lista de todos los negativos de la lista original

(define (listaNumNegativos lista)
    (if (null? (cdr lista))
        (if (< (car lista) 0)
            (append (list (car lista)))
            '()
        )
        (if (< (car lista) 0)
            (append (list (car lista)) (listaNumNegativos (cdr lista)))
            (listaNumNegativos (cdr lista))
        )
    )
)


(listaNumNegativos '(1 -1 -1 -1  0 0 0 -2 -8 -7 1 2 36 6))