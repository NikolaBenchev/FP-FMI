#lang racket
(define (calc-sum x n)
  (define (calc-sum currDegree currPow currSum x n)
    (if (> currDegree n)
        currSum
        (calc-sum (+ currDegree 1) (* currPow x) (+ currSum currPow) x n)
        )
    )
  (calc-sum 0 1 0 x n)
  )

(calc-sum 3 4)