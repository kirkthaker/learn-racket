#lang racket

; Returns the length of the list `lst`
(define (my-len lst)
  (cond
    [(empty? lst) 0]
    [else (+ 1 (my-len (rest lst)))]))

(my-len (list 1 2 3 4 5))
(my-len empty)

; Returns the length of the list `lst`
; This function is tail recursive
(define (my-len-t lst)
  (define (aux lst len)
    (cond
      [(empty? lst) len]
      [else (aux (rest lst) (+ 1 len))]))
  (aux lst 0))

(my-len-t empty)
(my-len-t (list 1 2 3 4 5 6 7 8))