#lang Racket

(define (altura lista)
    (cond
        ((null? (cdr lista))
            (if (pair? (car lista))
                (+ 1 (altura (car lista)))
                1
            )
        ); Para el ultimo elemento
        ((not (pair? (car lista)))
            (altura (cdr lista))
        ); El elemento actual es un atomo
        (else
            
            (+ 1 (altura (car lista)))
        );En caso que sea una lista
    )
)
; (altura '(a b c))
; (altura '((((a b c)))))
(altura '((((c))) d ((e))(a (b (c (d (e))))))) ; 6
; (altura '((a) b c))
; (altura '(a (b c ((f) g)) c d e))
; (altura '((a (b (c (d (e))))))) 
(define (parentesis lista)
    (cond
        ((null? (cdr lista))
            (if (pair? (car lista))
                (+ 2 (parentesis (car lista)))
                2
            )
        ); Para el ultimo elemento
        ((not (pair? (car lista)))
            (parentesis (cdr lista))
        ); El elemento actual es un atomo
        (else
            (+ 2 (parentesis (car lista)))
        );En caso que sea una lista
    )
)
; (parentesis '(1 2 3 4))  
; (parentesis '(1 (3 (7 (8 1)) 2) 4  5))
; (parentesis '(((a) (b) c) e ((((w)))))) 
; (parentesis '())  