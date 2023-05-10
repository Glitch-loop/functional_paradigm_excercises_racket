#lang Racket
;Fecha: 06-04-22
;Alumno: Renet de Jesús Pérez Gómez
;Matricula: A01640555

;Entrenamiento 31
(define (producto-punto lista1 lista2) 
    (if (= (length lista1) (length lista2))
        (if (null? lista1)
            0
            (+ (* (car lista1) (car lista2)) (producto-punto (cdr lista1) (cdr lista2)))
        )
        'Lista_no_iguales
    )
)

(producto-punto (list 1 2 3) (list 5 6 7))
(producto-punto (list 1 2 3 4 5 6) (list 5 6 7 8 9 10))
