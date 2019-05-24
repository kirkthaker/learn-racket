#lang racket

(define pie 3)

(define (takepie str)
  (substring str 0 pie))

(takepie "testing string")

(define (lordify name)
  (string-append "Lord " name))

(lordify "Test")

(define (respond msg)
  (if (and
       (string? msg)
       (equal? (substring msg 0 5) "Hello"))
      "Hi!"
      "I don't understand."))

(respond "Hello there")
(respond "Testing testing")
(respond 1234)

(define (alpha-index letter)
  (cond
    [(equal? letter "a") 0]
    [(equal? letter "b") 1]
    [(equal? letter "c") 2]
    [(equal? letter "d") 3]
    [(equal? letter "e") 4]
    [(equal? letter "f") 5]
    [else -1]))

(alpha-index "a")
(alpha-index "asdf")
(alpha-index "f")