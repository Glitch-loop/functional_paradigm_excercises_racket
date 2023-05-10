#lang Racket
; Fecha: 20-04-22
; --Entrenamiento extra 36--
; Alumno: Renet de Jesús Pérez Gómez
; Matricula: A01640555

; Problemario: Programacion funcional en Scheme
; Problema: 31

; (define (parentesis lista)
;     (if (equal? lista '())
;         2
;         (* 2 (profundidad lista))
;     )
; )


(define (profundidad lista)
    (cond
        ((null? (cdr lista))
            (if (pair? (car lista))
                (+ 2 (profundidad (car lista)))
                2
            )
        ); Para el ultimo elemento
        ((not (pair? (car lista)))
            (profundidad (cdr lista))
        ); El elemento actual es un atomo
        (else
            (+ (profundidad (car lista)) (profundidad (cdr lista)))
        );En caso que sea una lista
    )
)


(profundidad '(1 2 3 4));1  
(profundidad '(1 (3 (7 (8 1)) 2) 4  5));4   
(profundidad '(((a) (b) c) e ((((w)))))); 8 
; (parentesis '())  
; (parentesis '(a b c)) ; 2
; (parentesis '((((a b c))))) ; 8
; (parentesis '((a) b c)) ;4
; (parentesis '(a (b c ((f) g)) c d e)) ;8
; (parentesis '((a (b (c (d (e))))))); 12