#lang Racket
(define (insert fila data)
    (append fila (list data))
)

(define (remove fila)
    (cdr fila)
)

(define (obersavle fila)
    (car fila)
)

(define (back fila)
    (if (null? (cdr fila))
        (car fila)
        (back (cdr fila))
    )
)

(insert '(1 2 3) 4)
(obersavle '(1 2 3 4))
(remove '(1 2 3 4))
(back '(1 2 3 4))