#lang Racket
; Fecha: 20-04-22
; --Entrenamiento extra 36--
; Alumno: Renet de Jesús Pérez Gómez
; Matricula: A01640555

; Problemario: Programacion funcional parte 2
; Problema: 9  



(define (compress lista)
    (if (null? lista)
        '()
        (if (null? (cddr lista))
            (if (equal? (car lista) (cadr lista))
                (append (list (car lista)))
                (append (list (car lista)) (list (cadr lista)))
            )
            (if (equal? (car lista) (cadr lista))
                (compress (cdr lista))
                (append (list (car lista))(compress (cdr lista)))
            )
        )
    )
)

(compress '())
(compress (list 'a 'a 'b 'c 'c 'd))
(compress '(a a a a b c c a a d e e e e))
(compress '(a a a a a a a a a a)) 

;Exmaple solution (a a a a a a a a a a) = (a)
