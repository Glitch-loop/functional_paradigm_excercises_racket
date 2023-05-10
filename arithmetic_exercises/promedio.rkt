#lang Racket

;Fecha: 02-05-22
;Alumno: Renet de Jesús Perez Gómez
;Matricula: A01640555

(define (promedio lista)
    (/ (apply + (map cdr lista)) (length lista))
)

(promedio '((lapiz . 2) (borrador . 1) (Chicle . 3) (Pluma . 5) (Sacapunta . 4) (grapadora . 50) (cinta . 10)))