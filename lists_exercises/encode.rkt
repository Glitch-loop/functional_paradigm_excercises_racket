#lang Racket
; Fecha: 20-04-22
; --Entrenamiento extra 36--
; Alumno: Renet de Jesús Pérez Gómez
; Matricula: A01640555

; Problemario: Programacion funcional parte 2
; Problema: 10

(define (saltar lista)
    (if (null? (cddr lista))
        (if (equal? (car lista) (cadr lista))
            '()
            (list (cadr lista))
        )
        (if (equal? (car lista) (cadr lista))
            (saltar (cdr lista))
            (cdr lista)
        )
    )
)
(define (contar lista)
    (if (null? (cdr lista))
        1
        (if (equal? (car lista) (cadr lista))
            (+ 1 (contar (cdr lista)))
            1
        )
    )
)

(define (encode lst)
    (if (null? lst)
        '()
        (if (null? (cdr lst))
            (append (list (list (contar lst) (car lst))))
            (append (list (list (contar lst) (car lst)))(encode (saltar lst)))
        )
    )
)

(encode '(a a a a b c c a a d e e e e))
(encode '(1 2 3 4 5))
(encode '(9 9 9 9 9 9 9 9 9))