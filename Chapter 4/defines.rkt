#lang racket

; Computes the number with the largest magnitude
; The period is a `rest` arg (i.e. it takes all the remaining args, which is all of theM)
(define (max-mag . nums)
  (apply max (map magnitude nums)))

(max-mag 1 2 -10 20 -121)

; Experimenting with `rest` args
(define (sep-args fst snd . rst)
  rst)

(sep-args 1 2 3 4 5)