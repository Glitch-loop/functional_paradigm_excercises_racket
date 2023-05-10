#lang Racket

;Fecha: 02-05-22
;Alumno: Renet de Jesús Perez Gómez
;Matricula: A01640555

(define (baratos precio lista)

    (map (lambda (x) 
            (cond 
                ((<= (cdr x) precio) (append x))
                (else '())  
            )
        )
        lista
    )

)

(baratos 6 '((lapiz . 2) (borrador . 1) (Chicle . 3) (Pluma . 5) (Sacapunta . 4) (Sacapunta . 6)  (grapadora . 50) (cinta . 10)))
