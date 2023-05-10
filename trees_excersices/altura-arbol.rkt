#lang Racket
; Fecha: 25-04-22
; --Entrenamiento 40--
; Alumno: Renet de Jesús Pérez Gómez
; Matricula: A01640555


(define (altura arbol)
    (cond
        ((null? arbol) -1)
        (else (+ 1 (max (altura (cadr arbol)) (altura (caddr arbol)))))
    )
)

(altura '(5 (3 () ()) (8 () (9 () ()))))
(altura '(3 (5 () ()) ()))
(altura '(3 (5 () ()) (7 () ())))
(altura '(3 (5 (1 (9 () ()) ()) (10 () (8 () ()))) (7 () ())))
