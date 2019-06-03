#lang racket

; Working with `let` bindings, conditionals, and definitions

; Returns the number of dice rolls before getting a 6
(define (roll-target cur-count)
  (let ([roll (random 1 7)]
        [new-count (+ cur-count 1)])
    (if (equal? roll 6)
        new-count
        (roll-target new-count))))

; Run a few experiments
(roll-target 0)
(roll-target 0)
(roll-target 0)

; Executes the dice roll count function `n` many times and returns the average number of rolls needed
(define (run-exp num-trials)
  (define (aux cur-trial roll-sum)
    (if (equal? cur-trial num-trials)
        (/ roll-sum num-trials)
        (let ([this-rolls (roll-target 0)])
          (aux (+ cur-trial 1) (+ roll-sum this-rolls)))))
  (aux 0 0))

(run-exp 1000)