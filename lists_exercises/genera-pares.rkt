#lang Racket
; Fecha: 20-04-22
; --Entrenamiento 36--
; Alumno: Renet de Jesús Pérez Gómez
; Matricula: A01640555

(define (genera-pares lista1 lista2)
    (if (null? (cdr lista1))
        (list (cons (car lista1) (car lista2)))
        (append (list (cons (car lista1) (car lista2))) (genera-pares (cdr lista1) (cdr lista2)))
    )
)

(genera-pares (list 'a 'b 'c 'd 'e) (list 1 2 3 4 5))
