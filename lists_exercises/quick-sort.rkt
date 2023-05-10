#lang Racket

;Fecha: 02-05-22
;Alumno: Renet de Jesús Perez Gómez
;Matricula: A01640555

(define (quick-sort lista)
  (cond
    ((or (null? lista) (null? (cdr lista)))  lista)
    (else
    (append
        (quick-sort  (filter (lambda (x) (< x (car lista))) (cdr lista)))
        (list (car lista))
        (quick-sort (filter (lambda (x) (>= x (car lista))) (cdr lista)))
    )
    )
  )
)
(quick-sort '(3 7 8 9 10 11 2 5))