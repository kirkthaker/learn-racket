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