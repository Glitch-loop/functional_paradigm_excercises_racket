#lang Racket
;Fecha: 30-03-22
;Alumno: Renet de Jesús Pérez Gómez | A01640555
;Entrnamiento extra dia 26

;Conversion Fahrenheit a Celcius

;PROBLEMA - 1
;Esta funcion convierte grados fahrenheit en grados celsius. 
;La funcion solo psoe un parametro "F" que son los grados fahrenheit a convertir
(define (fahrenheit-to-celsius F) (/ (* (- F 32) 5) 9))

;Pruenas
"Resultados primer problema"
(fahrenheit-to-celsius 212)
(fahrenheit-to-celsius 32)
(fahrenheit-to-celsius -40)

;PROBLEMA - 2
;Esta función determina si "n" es un numero positivo, negativo o es igual a "0"
(define (numero n)
    (if(> n 1)
        1
        (if(zero? n)
            0
            -1
        )

    )
)

;Pruenas
"Resultados segundo problema"
(numero -5)
(numero 5)
(numero 0)

;PROBLEMA - 3
;En terminos practicos es la formula general implementada, los parametros que recibe (a, b, c)
(define (roots a b c)
  (/ (+ (* b -1) (sqrt (- (expt b 2) (* 4 a c)))) (* 2 a)))

"Resultados tercer problema"
(roots 2 4 2)
(roots 1 0 0)
(roots 4 5 1)

;PROBLEMA - 4
;En este problema se implemento la formula para calcular el índice de masa corporal.
;La función recibe 2 parametros "weight" y "height", para hacer el calculo, para despues
;encontrar en que lugar se clasifica el resultado 
(define (clasificacion BMI)
    (if(< BMI 20)
        "underweight"
        (if(< BMI 25)
            "nomral"
            (if(< BMI 30)
                "obese1"
                (if(< BMI 40)
                    "obese2"
                    "obese3"
                )
            )
        )
    )
)

(define (bmi  weight height)
    (clasificacion (/ weight (expt height 2)))
)


"Resultados cuarto problema"
(bmi  45 1.7)
(bmi  55 1.5)
(bmi  76 1.7)
(bmi  81 1.6)
(bmi  120 1.6)