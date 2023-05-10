#lang Racket
; Fecha: 20-04-22
; --Entrenamiento extra 36--
; Alumno: Renet de Jesús Pérez Gómez
; Matricula: A01640555

; Problemario: Programacion funcional parte 1
; Problema: 18

(define (replicAtom num atom)
    (if (= num 1)
        (append (list atom))
        (append (list atom) (replicAtom (- num 1) atom))
    )
)

(define (replic num lista)
    (if (equal? lista '())
        lista
        (if (null? (cdr lista))
            (append (replicAtom num (car lista)))
            (append (replicAtom num (car lista)) (replic num (cdr lista)))
        )
    )
)

(replic 7 '())
(replic 3 '(a))
(replic 4 '(1 2 3 4))