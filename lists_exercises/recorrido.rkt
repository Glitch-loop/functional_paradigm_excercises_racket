#lang Racket

(define (preorden ABB)
    (if (null? ABB)
        '()
        (cons (car ABB) (append (preorden (cadr ABB)) (preorden (caddr ABB))))
    )
)

(preorden '(8 (5 (2 () ()) (7 () ())) (12 (10 () (11 () ())) (16 () ()))))


(define (inorden ABB)
    (cond
        ((null? ABB) '())
        (else 

        (append (inorden (cadr ABB)) (list (car ABB)) (inorden (caddr ABB))))
    )
)


(inorden '(8 (5 (2 () ()) (7 () ())) (12 (10 () (11 () ())) (16 () ()))))