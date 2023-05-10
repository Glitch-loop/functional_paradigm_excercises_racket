#lang Racket
; Fecha: 20-04-22
; --Entrenamiento 36--
; Alumno: Renet de Jesús Pérez Gómez
; Matricula: A01640555

(define (invierte-profundo lista)
    (cond
        ((null? lista) '()) ;La ultima posicion
        ((pair? (car lista))(append (lista (car lista))(lista (cdr lista)))) ;Encontramos una lista
        (else (append (list (cdr lista))(list (car lista)))) ;Encontramos un atomo
    )

)

(reverse (list (cons '1 'a)(cons '2 'b)(cons '3 'c)))
 