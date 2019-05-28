#lang racket

; Applies a function twice to the value v
(define (twice f v)
  (f (f v)))

(twice sqrt 256)
(twice (lambda (s) (string-append s "!")) "hello")

(define (play-game)
  (let
    ([x (random 4)]
    [y (random 4)])
    (cond
      [(> x y) "X wins!"]
      [(> y x) "Y wins!"]
      [else "Tie game."])))

(play-game)

; A function that checks if string equals "password" (case insensitive)
(define (check-pass p)
  (if (string? p)
      (if (equal? (string-downcase p) "password")
          "Correct password"
          "Incorrect password")
      "Invalid input: not a string"))

(check-pass 123)
(check-pass "pass")
(check-pass "password")
(check-pass "passWORd")