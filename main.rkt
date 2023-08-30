#lang racket
(displayln "Hello, World!")


Defining Functions:

(define (square x)
  (* x x))
(displayln (square 5)) ; Prints 25


Lists and Mapping:

(define numbers '(1 2 3 4 5))
(define squared (map square numbers))
(displayln squared) ; Prints (1 4 9 16 25)


Conditional Expressions:

(define x 10)
(if (> x 5)
    (displayln "x is greater than 5")
    (displayln "x is not greater than 5"))


Recursion:
(define (factorial n)
  (if (= n 0)
      1
      (* n (factorial (- n 1)))))
(displayln (factorial 5)) ; Prints 120


Defining Macros:

(define-syntax my-when
  (syntax-rules ()
    ((_ condition expr ...)
     (if condition (begin expr ...)))))
(define x 10)
(my-when (> x 5)
  (displayln "x is greater than 5"))
