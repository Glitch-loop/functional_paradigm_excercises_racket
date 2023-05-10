#lang Racket
;Fecha: 06-04-22
;Alumno: Renet de Jesús Pérez Gómez
;Matricula: A01640555

;Entrenamiento 31
(define (miembro atomo lista) 
    (if (null? lista)
        #f
        (if(= (car lista) atomo)
            #t
            (miembro atomo (cdr lista) )
        )
    )
)

(miembro 4 '( 1 2 3 4 5 6 7 8 9 10 11 0 12 13 14 15 16 17 18 19 20))
(miembro 21 '( 1 2 3 4 5 6 7 8 9 10 11 0 12 13 14 15 16 17 18 19 20))
(miembro 0 '( 1 2 3 4 5 6 7 8 9 10 11 0 12 13 14 15 16 17 18 19 20))