#lang Racket


(define (contarProfundidad lista)
    (if (list? lista)
        (+ 1 (contarProfundidad (car lista)))
        0
    )
)


(define (profundidad lista)
    (if (null? (cdr lista))
        (contarProfundidad lista)
        (cond 
            ((list? lista)(writeln (contarProfundidad lista))(profundidad (cdr lista)))
            (else (profundidad (cdr lista)))
        )   
    )
)
"Primer ejercicio"
(profundidad '((a)((b))))
"Segundo ejercicio"
(profundidad '(a b c))
"Tercer ejericio"
(profundidad '((((c))) d ((e))(a (b (c (d (e)))))))
; (profundidad '((a (b (c (d (e)))))))
; (profundidad '(a((a))(b)))
; (contarProfundidad '((((a b c)))))
; (contarProfundidad '(((a))))
; (contarProfundidad '(a b c))
(contarProfundidad '((((a b c)))))