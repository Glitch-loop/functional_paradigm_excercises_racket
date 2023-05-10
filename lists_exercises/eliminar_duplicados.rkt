#lang Racket
; Fecha: 20-04-22
; Alumno: Renet de Jesús Pérez Gómez
; Matricula: A01640555

(define (miembro atomo lista) 
    (if (null? lista)
        #f ;Si llegamos el ultimo, no se encontre el miembro buscado
        (if (equal? (car lista) atomo)
            #t ;Se encontro el atomo buscado
            (miembro atomo (cdr lista)) ;Si no se encontro el atomo buscado, volvemos a buscar 
        )
    )
)

(define (nuevaLista lista nueva_lista)
    (if (null? (cdr lista))
        ;En el ultimo elemento
        (if (false? (miembro (car lista) nueva_lista))
            (append (list (car lista)))
            '()
        )
        ;En cualquier otro elemento
        (if (false? (miembro (car lista) nueva_lista))
            (append (list (car lista)) (nuevaLista (cdr lista) (append (list (car lista)) nueva_lista))) ;Se agrega
            (nuevaLista (cdr lista) nueva_lista) ;No se agrega
        )     
    )
)

(define (duplicados lista)
    (if (null? lista)
        '()
        (nuevaLista lista '())
    )
)

(duplicados '())
(duplicados (list 'a 'a 'b 'c 'c 'd))
(duplicados '(a a a a b c c a a d e e e e))
(duplicados '(a a a a a a a a a a))