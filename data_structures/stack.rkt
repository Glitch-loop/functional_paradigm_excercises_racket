#lang Racket
(define (push pila data)
    (cons data pila)
)

(define (pop pila)
    (cdr pila)
)

(define (obersvable pila)
    (car pila)
)

(push '(3 2 1) 4)
(obersvable '(4 3 2 1))
(pop '(4 3 2 1))