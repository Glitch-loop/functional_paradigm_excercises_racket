#lang Racket

(define (busca ABB dato)
    (cond
        ((null? ABB) #f)
        ((= dato (car ABB)) #t)
        ((< dato (car ABB)) (busca (cadr ABB) dato))
        (else (busca (caddr ABB) dato))
    )
)

(busca '(8 (5 (2 () ()) (7 () ())) (12 (10 () (11 () ())) (16 () ()))) 5)