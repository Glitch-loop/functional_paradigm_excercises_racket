#lang Racket
; -- Ejercicio extra --
;Fecha: 06-04-22
;Alumno: Renet de Jesús Pérez Gómez
;Matricula: A01640555

;Problema 13 - Problemario: Programación funcional, parte 1
(define (list-of-symbols? lista)
    (if (null? lista)
        #t
        (if (number? (car lista))
            #f
            (list-of-symbols? (cdr lista))   
        )
    )
)

(list-of-symbols? '())
(list-of-symbols? '(a b c d e))
(list-of-symbols? '(a b c d 42 e))
