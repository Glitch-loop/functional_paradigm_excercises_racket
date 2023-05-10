; Fecha: 30-03-22
; Alumno: Renet de Jesús Pérez Gómez | A01640555
#lang Racket

(define a 5)
(define b 2)
(define c 8)

; Para el caso positivo
(/ (+ (* b -1) (sqrt (- (expt b 2) (* 4 a c)))) (* 2 a))

; Para el caso negativo
(/ (- (* b -1) (sqrt (- (expt b 2) (* 4 a c)))) (* 2 a))
