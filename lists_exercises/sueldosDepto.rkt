#lang Racket
(define (sumatiora BDEmp)
    (if (null? BDEmp)
        0
        (+ (cadddr (car BDEmp)) (sumatiora (cdr BDEmp)))
    )
)

(define (promedio BDEmp)
    (/ (sumatiora BDEmp) (length BDEmp))
)

(define (filtrarEmpleadosDept dpto lista)
    (cond
        ((null? lista) '())
        ((= (caddar lista) dpto)
            (append (list (car lista)) (filtrarEmpleadosDept dpto (cdr lista)))
        )
        (else (filtrarEmpleadosDept dpto (cdr lista)))
    )

)

(define (promedio-sueldo-departamento dpto lista)
    (promedio (filtrarEmpleadosDept dpto lista))
)

(promedio-sueldo-departamento 1
    '(
        (1000 (Abraham Chalita) 1 20000)
        (1001 (Jairo Barrera) 2 22000)
        (1002 (Carol Arrieta) 1 25000)
        (1003 (Eugenio Castro) 1 23500)
        (1004 (Diego Mellado) 1 20000)
        (1005 (Victor portilla) 3 32000)
        (1006 (Sayuri Guizado) 3 18700)
        (1007 (Manuel Barrera) 2 21800)
        (1008 (Juan Daniel) 3 46000)
        (1009 (Karla Gonzalez) 2 25000)
        (1010 (Emilio Ortiz) 1 24900)
    )
)
