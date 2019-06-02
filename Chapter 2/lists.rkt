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

; Applies function fun to every element of list lst
(define (my-map fun lst)
  (cond
    [(empty? lst) lst]
    [else (cons (fun (first lst)) (my-map fun (rest lst)))]))

(my-map sqrt (list 1 4 9 16 25 36))

; Applies function fun to every element of list lst
; This function is tail recursive
(define (my-map-t fun lst)
  (define (aux fun lst acc)
    (cond
      [(empty? lst) (reverse acc)]
      [else (aux fun (rest lst) (cons (fun (first lst)) acc))]))
  (aux fun lst empty))

(my-map-t sqrt (list 1 4 9 16))

; Removes *consecutive* duplicates from a list
(define (remove-consec-dups lst)
  (cond
    [(empty? lst) empty]
    [(equal? (my-len-t lst) 1) lst]
    [(equal? (first lst) (first (rest lst))) (remove-consec-dups (rest lst))]
    [else (cons (first lst) (remove-consec-dups (rest lst)))]))

(remove-consec-dups (list 1 1 1 2 2 3))
(remove-consec-dups empty)
(remove-consec-dups (list 1 2 3 4))