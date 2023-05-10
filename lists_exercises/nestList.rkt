#lang Racket
; (define lista (list (list 'a 'b 'c)(list 'b 'c)(list 'c 'ok)))
(define lista (list (list 'a 'b)(list 'b 'c)(list 'c 'ok)))

(writeln lista)

(define (datos1 lista)
    ; IF para imprimir
    (if (null? lista)
        false
        (writeln (car lista))
    )
    ; IF para recorrer lista anidada
    (if (null? lista)
        false
        (datos1 (cdr lista))
    )
)

(define (datos lista) 
    ; IF para entrar a lista anidada
    (if (null? lista)
        false
        (datos1 (car lista))
    )
    ; IF para recorrer la lista principal
    (if (null? lista)
        false
        (datos (cdr lista))
    )
)

(datos lista)