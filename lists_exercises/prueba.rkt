#lang Racket
(define (cuadrado num)
    (* num num))

(cuadrado 9)

(define (area-circulo radio)
    (* pi (cuadrado radio)))

(area-circulo 5)

(define (volumen-cilindro altura radio)
  (* (area-circulo radio) altura))

(volumen-cilindro 10 5)

(define (tipo-numero n)
    (if (< n 0)
        'negativo
        (if (zero? n)
            'cero
            'positivo)))

(tipo-numero -3)


(define (mayor a b)
    (if (>= a b) a b))

(mayor 50 67)

; (define (mayor3 a b c)
;     (if (>= (mayor a b) c)
;         (mayor a b)
;         c
;     ))

(define (mayor3 a b c)
    (mayor a (mayor b c)))

(mayor3 77 67 1)