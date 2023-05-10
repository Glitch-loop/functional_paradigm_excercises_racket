#lang Racket
(define (validarMoneda transitions userInput)
    (cond 
        ((null? (cdr transitions)) (if (= (car transitions) userInput) userInput #f))
        (else (if (= (car transitions) userInput) userInput (validarMoneda (cdr transitions) userInput)))
    )
)

(define (pago automata listUserInput)
    (cond 
        ((= (car automata) (caddr automata)) (write "Gracias por tu compra, monto recibido: $") (writeln (car automata))); Si el estado actual es igual al estado aceptor 
        ((> (car automata) (caddr automata)) (write "Gracias por tu compra, monto recibido: $") (write (car automata)) (writeln " Ten tu cambio")); Si el estado actual ya supero al estado aceptor
        ((null? (cdr listUserInput))
            (cond
                ((false? (validarMoneda (cadr automata) (car listUserInput)))
                    (writeln "Moneda de denominación no permitida")(write "El monto recibido no ajusta para el producto, monto recibido : $") (writeln (car automata))); Es la ultima moneda y es una moneda no permitida
                ((< (+ (car automata) (validarMoneda (cadr automata) (car listUserInput))) (caddr automata)) (write "El monto recibido no ajusta para el producto, monto recibido : $") (writeln (car automata)));Es la ultima moneda y es una moneda permitida
                (else (pago (list (+ (car automata)(validarMoneda (cadr automata) (car listUserInput))) (cadr automata) (caddr automata)) '()));Es la ultima moneda, es permitida pero logra ajustar para el producto
            )
        );Si ya estamos en la ultima moneda del usuario
        (else 
            (cond 
                ((false? (validarMoneda (cadr automata) (car listUserInput)))(writeln "Moneda de denominación no permitida")(pago automata (cdr listUserInput)));Para el caso en que la moneda sea no permitida
                (else (pago (list (+ (car automata)(validarMoneda (cadr automata) (car listUserInput))) (cadr automata) (caddr automata))(cdr listUserInput))); Para el caso en que la moneda sea permitida
            )
        )
    )
)



(pago '(0 (1 2 5 10 20 50) 13) '(10 1 2)) ; Compra exitosa (justa)
(pago '(0 (1 2 5 10 20 50) 13) '(10 5)) ; Compra exitosa (con cambio)
(pago '(0 (1 2 5 10 20 50) 13) '(10 1)) ; Compra exitosa (no alcanzo)
(pago '(0 (1 2 5 10 20 50) 13) '(3 3 10 10)) ;Moneda no permitida al inicio 
(pago '(0 (1 2 5 10 20 50) 13) '(10 1 3)) ; Moneda no permitida al final
(pago '(0 (1 2 5 10 20 50) 13) '(10 3 3 5)) ; Moneda no permitida en medio
(pago '(0 (1 2 5 10 20 50) 13) '(3 10 5 3)); Moneda no permitida en extremos
(pago '(0 (1 2 5 10 20 50) 13) '(3 3 3 3)); Moneda no permitida...