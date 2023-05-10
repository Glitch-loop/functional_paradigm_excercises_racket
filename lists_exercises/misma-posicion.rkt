#lang Racket
; Fecha: 20-04-22
; --Entrenamiento extra 36--
; Alumno: Renet de Jesús Pérez Gómez
; Matricula: A01640555

; Problemario: Programacion funcional en Scheme
; Problema: 27

(define (duplicados atomo1 atomo2)
    (if (equal?  atomo1 atomo2)
        (list atomo1)
        '()
    )
)

(define (misma-posicion lista1 lista2) 
    (if (null? lista1)
        '()
        (append (duplicados (car lista1) (car lista2)) (misma-posicion (cdr lista1) (cdr lista2)))
    )
)

(misma-posicion '((a) b c) '(1 b 2))
(misma-posicion '(a b (c 2) d e) '(a 5 (c 2) e d))