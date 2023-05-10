#lang Racket
; Fecha: 20-04-22
; --Entrenamiento extra 36--
; Alumno: Renet de Jesús Pérez Gómez
; Matricula: A01640555

; Problemario: Programacion funcional parte 2
; Problema: 8  

(define (unir lista)
    (if (null? (cdr lista))
        (append (list (car lista)))
        (if (equal? (car lista) (cadr lista))
            (append (list (car lista)) (unir (cdr lista)))
            (append (list (car lista)))
        )
    )
)

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

(define (pack lst)
    (if (null? lst)
        '()
        (if (null? (cdr lst))
            (append (list (unir lst)))
            (append (list (unir lst))(pack (saltar lst)))
        )
    )
)
(pack '())
(pack (list 'd 'e))
(pack (list 'a 'a 'b 'c 'c 'd))
(pack '(a a a a b c c a a d e e e e))
(pack '(a a a a a a a a a a))
(pack '(1 2 3 4 5))
(pack '(9 9 9 9 9 9 9 9 9))