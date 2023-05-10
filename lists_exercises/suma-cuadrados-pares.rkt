#lang Racket
;Fecha: 06-04-22
;Alumno: Renet de Jesús Pérez Gómez
;Matricula: A01640555

;Entrenamiento 31
(define (suma-cuadrados-pares lista)
    (if (null? lista)
        0
        (if(= (remainder (car lista) 2) 0)
            (+ (expt (car lista) 2)(suma-cuadrados-pares (cdr lista)))        
            (suma-cuadrados-pares (cdr lista))        
        )
    )
)

(suma-cuadrados-pares (list 1 2 3 4))
(suma-cuadrados-pares (list 1 2 3 4 5 6))
(suma-cuadrados-pares (list 1 3 5 7))

