#lang Racket
; -- Ejercicio extra --
;Fecha: 06-04-22
;Alumno: Renet de Jesús Pérez Gómez
;Matricula: A01640555

;Problema 18 -  Ejercicios programación funcional en Scheme

(define (indice elemento lista)
    (if (empty? lista)
        (list )
        (if (equal? elemento (car lista))
            1
            (if (equal? (indice elemento (cdr lista)) '())
                '()
                (+ 1 (indice elemento (cdr lista)))
            )
        )
    )
)


(indice 'y '(x y z a b c)) 
(indice 'z '(x y z a b c)) 
(indice 'c '(x y z a b c)) 
(indice 'd '(x y z a b c)) 
(indice 'e '(x y z a b c)) 
 