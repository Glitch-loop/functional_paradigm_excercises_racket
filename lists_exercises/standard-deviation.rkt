#lang Racket
; -- Ejercicio extra --
;Fecha: 06-04-22
;Alumno: Renet de Jesús Pérez Gómez
;Matricula: A01640555

;Problema 17 - Problemario: Programación funcional, parte 1

(define (suma listaSuma)
    (if (null? listaSuma)
        0
        (+ (car listaSuma) (suma (cdr listaSuma)))
    )
)

(define (average lista)
    (if (null? lista)
        0
        (/ (suma lista) (length lista))
    )
)

(define (standard-deviation lista) 
    (if (null? lista)
        0
        (sqrt (/ (sumaDistancias lista (average lista)) (length lista)))
    )
)


(define (sumaDistancias lista avg)
    (if (null? lista)
        0
        (+ (expt (- (car lista) avg) 2) (sumaDistancias (cdr lista) avg))  
    )
)

(standard-deviation '(4 8 15 16 23 42))
(standard-deviation '(110 105 90 100 95))
(standard-deviation '(9 2 5 4 12 7 8 11 9 3 7 4 12 5 4 10 9 6 9 4))
