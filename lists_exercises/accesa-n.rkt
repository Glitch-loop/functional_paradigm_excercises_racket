#lang Racket
; -- Ejercicio extra --
;Fecha: 06-04-22
;Alumno: Renet de Jesús Pérez Gómez
;Matricula: A01640555

;Problema 17 -  Ejercicios programación funcional en Scheme

(define (accesa-n elemento lista)
    (if (empty? lista)
        (list )
        (if (= elemento 1)
            (writeln (car lista))
            (accesa-n (- elemento 1) (cdr lista))
        )
    )
)


(accesa-n 1 '(x y z (a b c) 7 8))
(accesa-n 4 '(x y z (a b c) 7 8)) 
(accesa-n 8 '(x y z (a b c) 7 8)) 
(accesa-n 3 '(x y z (a b c) 7 8)) 
 