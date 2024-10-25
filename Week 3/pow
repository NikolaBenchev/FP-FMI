#lang racket
(define (pow x n)
  (define (pow counter x n)
    (if (= counter n)
        1
        (* x (pow (+ counter 1) x n))
        )
    )
  (pow 0 x n)
  )

(pow 10 3)