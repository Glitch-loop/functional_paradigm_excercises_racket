#lang Racket
;Fecha: 30-03-22
;Alumno: Renet de Jesús Pérez Gómez | A01640555
(define (restaAlcuadrado p1 p2)
    (expt (- p2 p1) 2))

(define (distancia x1 y1 x2 y2)
   (floor (sqrt (+ (restaAlcuadrado x2 x1) (restaAlcuadrado y2 y1))))
 )

 (define (desigualdadTriangular l1 l2 l3)
   ;Se usa teorema de la desigualdad del triangulo para comprobar que es un triangulo
   ;C + B > A
   (if(> (+ l3 l2) l1)
      (if(= l1 l2)
         (if(= l1 l3)
            'Equilatero
            'Isósceles
         )
         (if (= l2 l3)
             'Isósceles
             'Escaleno
             )
         )
      "No es triangulo"
   )
 )

(define (triangulo x1 y1 x2 y2 x3 y3)
  (desigualdadTriangular (distancia x1 y1 x2 y2) (distancia x2 y2 x3 y3) (distancia x3 y3 x1 y1)))


(triangulo -11.4 1.6 -6.62 1.6 -9.01 5.74) ;Equilatero
(triangulo 0 0 5 0 3 7) ;Isósceles
(triangulo 2 0 6 5 6 3) ;Escaleno
(triangulo 0 0 6 0 4 0) ;No es triangulo