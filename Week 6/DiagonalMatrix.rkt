#lang racket

(define (diagonal mat)
  (define (diagonal index mat)
    (if (>= index (length mat))
        '()
        (cons (list-ref (list-ref mat index) index) (diagonal (+ index 1) mat))))
  (diagonal 0 mat))

(define matrix '((1 2 3 4)
          (5 6 7 8)
          (9 10 11 12)
          (13 14 15 16)))
(diagonal matrix)