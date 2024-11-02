#lang racket
(define (count-occurances d n)
  (if (= n 0)
      0
      (if(= d (remainder n 10))
         (+ 1 (count-occurances d (quotient n 10)))
         (+ 0 (count-occurances d (quotient n 10)))
         )
      )
  )
(count-occurances 1 111111)