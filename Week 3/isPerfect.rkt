#lang racket

(define (sum-divisors n)
  (define (sum-divisors curr max)
    (if(= curr max)
       0
       (if (= (remainder max curr) 0)
          (+ curr (sum-divisors (+ curr 1) max))
          (sum-divisors (+ curr 1) max)
          )
       )
    )
  (sum-divisors 1 n)
)

(define (perfect? n)
  (if (= n (sum-divisors n))
      #t
      #f)
  )
(perfect? 496)
