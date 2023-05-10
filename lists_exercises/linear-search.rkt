#lang Racket
; -- Ejercicio extra --
;Fecha: 06-04-22
;Alumno: Renet de Jesús Pérez Gómez
;Matricula: A01640555

;Problema 15 - Problemario: Programación funcional, parte 2
(define (linear-search lista x function)
    (define (eq-fun a b) 
        (if (function a b)
            #t
            #f
        )   
    )

    (if (null? lista)
        #f ;La lista ya esta vacia      
        (if (false? (eq-fun (car lista) x))
            (if (false? (linear-search (cdr lista) x function))
                #f ;Seguimos retornando falso en caso de que la lista llegue a quedar vacia
                (+ 1 (linear-search (cdr lista) x function)) ;Sumamos a medida que vayamos recorriendo
            ) ;No lo hemos encontrado
            0 ;Lo encontramos (con la suma que hicimos a medida que fuimos recorriendo la lista 
                                ; con la recursividad, ya sabremos el index donde esta el numero)
                                ; que estamos buscando)
        )
    )
        
)

(linear-search '() 5 =)
(linear-search '(48 77 30 31 5 20 91 92 69 97 28 32 17 18 96) 5 =)
(linear-search '("red" "blue" "green" "black" "white") "black" string=?)
(linear-search '(a b c d e f g h) 'h equal?)