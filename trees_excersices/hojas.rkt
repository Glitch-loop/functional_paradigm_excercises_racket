#lang Racket
; Fecha: 25-04-22
; --Entrenamiento 40--
; Alumno: Renet de Jesús Pérez Gómez
; Matricula: A01640555

(define (es-hoja? arbol)
    (if (and (null? (cadr arbol)) (null? (caddr arbol)))
        #t
        #f
    )
)

(define (hojas arbol)
    (cond 
        ((null? arbol) '())
        ((not (false? (es-hoja? arbol))) (list (car arbol)))
        (else (append (hojas (cadr arbol)) (hojas (caddr arbol))))
    )            
)

(hojas '(5 (3 () ()) (8 () (9 () ()))))
(hojas '(3 (5 () ()) ()))
(hojas '(3 (5 () ()) (7 () ())))
(hojas '(3 (5 (1 (9 () ()) ()) (10 () (8 () ()))) (7 () ())))

