#lang Racket
; -- Ejercicio extra --
;Fecha: 06-04-22
;Alumno: Renet de Jesús Pérez Gómez
;Matricula: A01640555

;Problema 16 -  Ejercicios programación funcional en Scheme

(define (cuantos atomo lista)
    (if (null? lista)
        0
        (if (equal? (car lista) atomo)
            (+ 1 (cuantos atomo (cdr lista)))
            (+ 0 (cuantos atomo (cdr lista)))
        )
    )
)

(cuantos 'a '()) 
(cuantos 'a '(a b c b a a a b a a e)) 
(cuantos 1 '(1 2 3 2 1 1 1 2 1 1 5)) 
(cuantos 'x '(x e r t q a w e rt y x x s a q w r y u x x x z a s d x s x)) 