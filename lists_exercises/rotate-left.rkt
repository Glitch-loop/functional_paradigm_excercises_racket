#lang Racket
; Fecha: 20-04-22
; --Entrenamiento extra 36--
; Alumno: Renet de Jesús Pérez Gómez
; Matricula: A01640555

; Problemario: Programacion funcional parte 2
; Problema: 3  

(define (rotate num resTric lista)
    (if (zero? num)
        '()
        (if (<= num resTric)
            (append (list (car lista)))
            (append (list (car lista))(rotate num (+ resTric 1) (cdr lista))) 
        )    
    )
)

(define (restOfTheList num resTric lista)
    (if (null? (cdr lista))
        (list (car lista))
        (if (>= num resTric)
            (restOfTheList num (+ resTric 1) (cdr lista))
            (append (list (car lista))(restOfTheList num resTric (cdr lista))) 
        )
    )   
)

(define (corrector numRotate lengthLista)
    (if (zero? numRotate)
        0    
        (if (> numRotate 0)
            (floor (remainder numRotate lengthLista))
            (+ (ceiling (remainder numRotate lengthLista)) lengthLista)
        )
    )
)

(define (rotate-left num lista)
    (if (zero? num)
        lista    
        (if (equal? lista '())
            '()
            (append (restOfTheList (corrector num (length lista)) 1 lista) (rotate (corrector num (length lista)) 1 lista)) 
        )
    )
)

(rotate-left 5 (list ))
(rotate-left 0 ( list 'a 'b 'c 'd 'e 'f 'g))
(rotate-left 1 (list 'a 'b 'c 'd 'e 'f 'g))
(rotate-left -1 (list 'a 'b 'c 'd 'e 'f 'g))
(rotate-left 3 (list 'a 'b 'c 'd 'e 'f 'g))
(rotate-left -3 (list 'a 'b 'c 'd 'e 'f 'g))
(rotate-left 8 '(a b c d e f g))
(rotate-left -8 '(a b c d e f g))
(rotate-left 45 '(a b c d e f g))
(rotate-left -45 '(a b c d e f g))
