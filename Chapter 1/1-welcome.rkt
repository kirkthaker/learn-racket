#lang racket

(define (takefive str)
  (substring str 0 5))

(takefive "the quick brown fox jumps over the lazy dog")