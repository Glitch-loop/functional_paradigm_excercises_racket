#lang Racket

; Considerando que la posición 1 es 0
(define (enesimoNumFibonacci n)
    (cond 
        ((= n 1) 0
            '(0)
        )
        ((= n 2) 1
            '(1)
        ) 
        (true  
        
            (+ (enesimoNumFibonacci (- n 1)) (enesimoNumFibonacci (- n 2)))
        )
    )
)

(enesimoNumFibonacci 5)