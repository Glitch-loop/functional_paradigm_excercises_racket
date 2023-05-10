#lang Racket
; Fecha: 20-04-22
; --Entrenamiento extra 36--
; Alumno: Renet de Jesús Pérez Gómez
; Matricula: A01640555

; Problemario: Programacion funcional en Scheme
; Problema: 30

(define (profundidad lista)
    (cond
        ((null? (cdr lista))
            (if (pair? (car lista))
                (+ 1 (profundidad (car lista)))
                1
            )
        ); Para el ultimo elemento
        ((not (pair? (car lista)))
            (profundidad (cdr lista))
        ); El elemento actual es un atomo
        (else
            (if (>= (profundidad (car lista))  (profundidad (cdr lista)))
                (+ 1 (profundidad (car lista)))
                (profundidad (cdr lista))
            )
        );En caso que sea una lista
    )
)
(profundidad '(a b c)) ; 1
(profundidad '((((a b c))))) ; 4
(profundidad '((((c))) d ((e))(a (b (c (d (e))))))) ; 6
(profundidad '((a) b c))
(profundidad '(a (b c ((f) g)) c d e))
(profundidad '((a (b (c (d (e))))))) 
(profundidad '(a (b c ((f) g)) c (d (h (i (j (k (l (m))))))) e))