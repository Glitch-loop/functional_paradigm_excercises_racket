#lang racket

;Funciones como parametros
(define (aplica-bin fn a b)
    (fn a b))

(define (aplica-tri fn a b c)
    (fn a b c))

(define (aplica-un fn a)
    (fn a)
)

(define (cuad n)
    (* n n)
)

;Funcion que regresa otra función
(define (genera-funcion tipo)
    (cond
        ((= tipo 1) +)
        ((= tipo 2) -)
        ((= tipo 3) /)
        ((= tipo 4) *)
        ((= tipo 5) cuad)
    )
)

;Estructuras de datos como funciones
(define lista-fn (list + - / *)) 
((car lista-fn) 1 3)   