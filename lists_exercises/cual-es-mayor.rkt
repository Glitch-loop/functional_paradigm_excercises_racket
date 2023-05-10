#lang Racket
; -- Ejercicio extra --
;Fecha: 06-04-22
;Alumno: Renet de Jesús Pérez Gómez
;Matricula: A01640555

;Problema 15 -  Ejercicios programación funcional en Scheme

(define (cual-es-mayor? lista1 lista2)
    (if (null? lista2)
        1
        (if (null? lista1)
            2
            (cual-es-mayor? (cdr lista1) (cdr lista2))
        )
    )
)

(cual-es-mayor? '(a b c) '(1 2 3 4))
(cual-es-mayor? '(a b c) '(1 2 3))
(cual-es-mayor? '(a b c d) '(1 2 3))
(cual-es-mayor? '(a b c d) '(v w x y z))