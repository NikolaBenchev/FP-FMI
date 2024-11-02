#lang racket

(define (ascending? n)
  (define (ascending? lastDigit currN)
    (if (= currN 0)
        #t
        (and (> lastDigit (remainder currN 10)) (ascending? (remainder currN 10) (quotient currN 10)))
    )
    )
  (ascending? (remainder n 10) (quotient n 10))
  )
  
(ascending? 1234)
(ascending? 4312331)
(ascending? 4321)
