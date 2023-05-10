#lang Racket
; Fecha: 25-04-22
; --Entrenamiento 40--
; Alumno: Renet de Jesús Pérez Gómez
; Matricula: A01640555

;Formato con el que se trabajara
; (escuela
;     (grupo
;     (#matricula (nombre) (10 7 8) 10)
;     (#matricula (nombre) (7 8 9) 8)
;     )
;     (grupo
;     (#matricula (nombre) (3 calificaciones parciales) calificacion_examen_final)
;     (#matricula (nombre) (3 calificaciones parciales) calificacion_examen_final)
;     )
; )

;Hacer una funcion llamada "calificacion-final", dada la entrada de una lista con el formato
;anterior genere una lista con los siguientes datos y formato;
;(#matricula (nombre) calificación_final)

;La calificacion final se calcula considerando
; 60%: Ponderación de la calificaciones parciales
; 40%: Resultado del examen final

(define (sumaCalificacionFinal parcial final)
    (if (null? (cdr parcial))
        (+ (car parcial) final)
        (+ (car parcial) (sumaCalificacionFinal (cdr parcial) final))
    )
)

(define (obtenerCalificacionFinalPorAlumno alumno)
    (cond
        ((null? (cdr alumno)) '())
        ((pair? (car alumno))
            (if (number? (caar alumno))
                (list (floor (/ (* (sumaCalificacionFinal (car alumno) (cadr alumno)) 100) 40)))
                (append (list (car alumno)) (obtenerCalificacionFinalPorAlumno (cdr alumno)))
            )
        )
        (else (append (list (car alumno)) (obtenerCalificacionFinalPorAlumno (cdr alumno))))
    )
)

(define (alumno listaAlumno)
    (cond 
        ((null? (cdr listaAlumno)) (list (obtenerCalificacionFinalPorAlumno (car listaAlumno))))
        (else (append (list (obtenerCalificacionFinalPorAlumno (car listaAlumno))) (alumno (cdr listaAlumno))))
    )
)

(define (calificacion-final grupo listaGrupos)
    (cond
        ((= grupo 1) (alumno (car listaGrupos)))
        (else (calificacion-final (- grupo 1) (cdr listaGrupos)))
    )
)

(calificacion-final 1
    '(
        (
            ("#70546A" (Gerardo) (10 7 8) 8)
            ("#80547A" (Bryan) (8 9 8) 7)
            ("#10554A" (Fatima) (8 7 8) 6)
            ("#50578A" (Javier) (6 7 5) 10)
        )
        (
            ("#50516A" (Fransico) (10 7 8) 9)
            ("#50146A" (Pedro) (9 7 7) 8)
        )
        (
            ("#10646A" (Carolina) (10 7 8) 10)
        )
    )
)