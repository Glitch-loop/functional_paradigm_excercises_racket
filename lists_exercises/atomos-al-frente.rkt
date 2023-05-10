#lang Racket
; Fecha: 20-04-22
; --Entrenamiento extra 36--
; Alumno: Renet de Jesús Pérez Gómez
; Matricula: A01640555

; Problemario: Programacion funcional en Scheme
; Problema: 23
(define (listas lista)
    (if (null? (cdr lista))
        (if (list? (car lista))
            (list (car lista))
            '()
        )
        (if (list? (car lista))
            (append (list (car lista)) (listas (cdr lista)))
            (listas (cdr lista))
        )
    )
)

(define (atomos lista)
    (if (null? (cdr lista))
        (if (list? (car lista))
            '()
            (list (car lista))
        )
        (if (list? (car lista))
            (atomos (cdr lista))
            (append (list (car lista)) (atomos (cdr lista)))
        )
    )
)

(define (atomos-al-frente lista)
    (if (null? lista)
        '()
        (append (atomos lista)(listas lista))
    )
)

(atomos-al-frente '((a b) (c) d (e) f))