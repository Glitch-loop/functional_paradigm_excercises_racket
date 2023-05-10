#lang Racket
; Fecha: 20-04-22
; --Entrenamiento extra 36--
; Alumno: Renet de Jesús Pérez Gómez
; Matricula: A01640555

; Problemario: Programacion funcional parte 1
; Problema: 14  


(define lista (list (cons '1 'a)(cons '2 'b)(cons '3 'c)))


(define (swap a b atom)
    (if (equal? a atom)
        (list b)
        (if (equal? b atom)
            (list a)
            (list atom)
        )
    )
)

(define (swapper a b lista)
    (if (null? (cdr lista))
        (swap a b (car lista))
        (append (swap a b (car lista)) (swapper a b (cdr lista)))
    )
)

(swapper 1 2 (list 4 4 5 2 4 8 2 5 6 4 5 1 9 5 9 9 1 2 2 4))
(swapper 1 2 '(4 3 4 9 9 3 3 3 9 9 7 9 3 7 8 7 8 4 5 6))
(swapper 'purr 'kitty '(soft kitty warm kitty little ball of fur happy kitty sleepy kitty purr purr purr))