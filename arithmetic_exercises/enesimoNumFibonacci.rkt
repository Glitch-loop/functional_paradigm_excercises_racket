#lang Racket
; Considerando que la posición 1 es 0
(define (enesimoNumFibonacci n)
    (cond 
        ((= n 1) 0)
        ((= n 2) 1) 
        (true (+ (enesimoNumFibonacci (- n 1)) (enesimoNumFibonacci (- n 2))))
    )
)

(enesimoNumFibonacci 1)
(enesimoNumFibonacci 2)
(enesimoNumFibonacci 3)
(enesimoNumFibonacci 4)
(enesimoNumFibonacci 5)
(enesimoNumFibonacci 13)