#lang Racket
; Fecha: 20-04-22
; --Entrenamiento extra 36--
; Alumno: Renet de Jesús Pérez Gómez
; Matricula: A01640555

; Problemario: Programacion funcional parte 2
; Problema: 12
(define (poner numVeces atom)
    (if (= 1 numVeces)
        (append (list atom))
        (append (list atom)(poner (- numVeces 1) atom))
    )
)

(define (decode lst)
    (if (null? lst)
        '()
        (append         
        (if (list? (car lst))
            (poner  (car (car lst)) (cadr (car lst)))
            (poner 1 (car lst))
        )(decode (cdr lst)))
    )       
)

(decode '())
(decode '((4 a) b (2 c) (2 a) d (4 e)))
(decode '(1 2 3 4 5))
(decode '((9 9)))