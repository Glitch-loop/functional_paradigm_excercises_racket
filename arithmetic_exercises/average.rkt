#lang Racket
; -- Ejercicio extra --
;Fecha: 06-04-22
;Alumno: Renet de Jesús Pérez Gómez
;Matricula: A01640555

;Problema 16 - Problemario: Programación funcional, parte 1

(define (suma listaSuma)
    (if (null? listaSuma)
        0
        (+ (car listaSuma) (suma (cdr listaSuma)))
    )
)

(define (average lista)
    (if (null? lista)
        0
        (/ (suma lista) (length lista))
    )
)

(average '())
(average '(4))
(average '(5 6 1 6 0 1 2))
(average '(1.7 4.5 0 2.0 3.4 5 2.5 2.2 1.2))