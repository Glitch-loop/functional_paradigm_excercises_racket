#lang Racket
; Fecha: 20-04-22
; --Entrenamiento 36--
; Alumno: Renet de Jesús Pérez Gómez
; Matricula: A01640555

(define (convierte-plana lista)
    (cond
        ((null? lista) '()) ;La ultima posicion
        ((pair? (car lista))(append (convierte-plana (car lista))(convierte-plana (cdr lista)))) ;Encontramos una lista
        (else (append (list (car lista)) (list (cdr lista)))) ;Encontramos un atomo
    )

)

(convierte-plana (list (cons '1 'a)(cons '2 'b )(cons '3 'c)))