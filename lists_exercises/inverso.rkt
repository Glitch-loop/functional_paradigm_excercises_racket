#lang Racket
; Fecha: 20-04-22
; --Entrenamiento 36--
; Alumno: Renet de Jesús Pérez Gómez
; Matricula: A01640555

(define (inverso lista)
    (if (null? (cdr lista))
        (list (car lista))
        (append (inverso (cdr lista))(list (car lista))) 
    )
)

(inverso (list 'a 'b 'c 'd 'e))
(inverso (list 1 2 3 4 ))
