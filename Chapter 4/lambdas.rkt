#lang racket

; Getting more comfortable with lambdas
; All functions in this file are written out as lambdas explicitly

; Returns the number with the largest magnitude. Takes a variable number of arguments.
(define max-mag-l
  (lambda nums
    (apply max (map magnitude nums))))

(max-mag-l 1 2 3 4 -10)

; Returns a greeting given a first name and an optional last name.
(define greet-opt
  (lambda (fst [lst "Doe"])
    (string-append "Hello, " fst " " lst)))

(greet-opt "John")
(greet-opt "John" "Smith")

; Returns a greeting given a first name and a last name as a keyword argument.
(define greet-key
  (lambda (fst #:lst lst)
    (string-append "Hello, " fst " " lst)))

(greet-key "John" #:lst "Doe")
(greet-key #:lst "Smith" "John")

; Returns the number of arguments provided to this function
(define num-args
  (lambda inp
    (length inp)))

(num-args 1 2 3 4 10)