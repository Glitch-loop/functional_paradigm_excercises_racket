#lang Racket
; -- Ejercicio extra --
;Fecha: 06-04-22
;Alumno: Renet de Jesús Pérez Gómez
;Matricula: A01640555

;Problema 20 -  Ejercicios programación funcional en Scheme

(define (miembro atomo lista) 
    (if (null? lista)
        #f ;Si llegamos el ultimo, no se encontre el miembro buscado
        (if (equal? (car lista) atomo)
            #t ;Se encontro el atomo buscado
            (miembro atomo (cdr lista)) ;Si no se encontro el atomo buscado, volvemos a buscar 
        )
    )
)

(define (es-conjunto? lista)
    (if (null? lista)
        #t ;Si terminamos la lista significa que es un conjunto
        (if (false? (miembro (car lista) (cdr lista)))
            (es-conjunto? (cdr lista)); No se encontro
            (list ) ;Se encontro un elemento repetido
        )
    )
)

(es-conjunto? '(a b c b a a a b a a e)) 
(es-conjunto? '(a b c b a a a b a a e a w a)) 
(es-conjunto? '())
(es-conjunto? '(a b c x e))
(es-conjunto? '(a b c x e e))
(es-conjunto? '(a b c ))
(es-conjunto? '(a b c x y))