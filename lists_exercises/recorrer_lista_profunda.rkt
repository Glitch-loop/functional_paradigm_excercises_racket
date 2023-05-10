#lang Racket
(define (recorrerListaProfunda lista)
    (cond
        ((null? lista) '()) ;La ultima posicion
        ((pair? (car lista))(recorrerListaProfunda (car lista))(recorrerListaProfunda (cdr lista))) ;Encontramos una lista
        (else (writeln (car lista))(recorrerListaProfunda (cdr lista))) ;Encontramos un atomo
    )
)
(recorrerListaProfunda (list (cons '1 'a)(cons '2 'b)(cons '3 'c)))
; (recorrerListaProfunda '(a (b c ((f) g)) c d e))

; Cuenta los átomos de la lista imbricada
(define (cuenta-atomo-profundo lista)
    (cond
        ((null? lista) 0)
        ((pair? (car lista)) (+ (cuenta-atomo-profundo (car lista)) (cuenta-atomo-profundo (cdr lista))))
        (else (+ 1 (cuenta-atomo-profundo (cdr lista))))
    )
)
; (cuenta-atomo-profundo '(a (b c ((f) g)) c d e))

;Incrementa en +1 los elementos de la lista
(define (incrementa lista)
    (cond
        ((null? lista) '())
        ((pair? (car lista))(cons (incrementa (car lista))(incrementa (cdr lista))))
        (else (cons (+ (car lista) 1) (incrementa (cdr lista))))
    )
)
; (incrementa '(1 2 (3 4) 5 (6)))

; Obtener el elemento mayor de una lista imbricada
(define (mayor lista)
    (cond
        ((null? (cdr lista))
            (if (pair? (car lista))
                (mayor (car lista))
                (car lista)
            )
        )
        ((not (pair? (car lista)))
            (if (> (car lista) (mayor (cdr lista)))
                (car lista)
                (mayor (cdr lista))
            )
        )
        (else (if (> (mayor (car lista))(mayor (cdr lista)))
            (mayor (car lista))
            (mayor (cdr lista))
        ))
    )
)
; (mayor '(1 2 3 (9 (11) ((13)))))



; (define (parentesis lista)
;     (cond
;         ((null? (cdr lista))
;             (if (pair? (car lista))
;                 (+ 2 (parentesis (car lista)))
;                 2
;             )
;         ); Para el ultimo elemento
;         ((not (pair? (car lista)))
;             (parentesis (cdr lista))
;         ); El elemento actual es un atomo
;         (else
;             (+ 2 (parentesis (car lista)))
;         );En caso que sea una lista
;     )
; )
; (parentesis '(1 2 3 4))  
; (parentesis '(1 (3 (7 (8 1)) 2) 4  5))
; (parentesis '(((a) (b) c) e ((((w)))))) 
; (parentesis '())  