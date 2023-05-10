#lang Racket
; Fecha: 20-04-22
; --Entrenamiento extra 36--
; Alumno: Renet de Jesús Pérez Gómez
; Matricula: A01640555

; Problemario: Programacion funcional parte 1
; Problema: 20 

(define (binary num)
    (if (zero? num)
        '()
        (if (equal? 1 num)
            (append (list 1))
            (if (zero? (remainder num 2))
                (append (binary (/ num 2)) (list (remainder num 2)))
                (append (binary (floor (/ num 2)))(list (remainder num 2)))
            )
        )
    )
)

(binary 0)
(binary 28)
(binary 30)
(binary 45123)