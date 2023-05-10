#lang Racket

(define (intercala lista1 lista2)
  (cond 
        ((null? lista1) (list (car lista2)))
        ((null? lista2) (list (car lista1)))
        (else   (append 
                    (list (car lista1) (car lista2))
                    (intercala (cdr lista1) (cdr lista2))
                )
        )
 )
)

(intercala '(1 2 3) '(a b)) 
;Example of solution (1 a 2 b 3)