#lang racket
(define(count-divisors n)
  (define(count-divisors curr counter max)
    (if(> curr max)
       counter
       (if(= (remainder max curr) 0)
          (count-divisors (+ curr 1) (+ counter 1) max)
          (count-divisors (+ curr 1) counter max)
          )
       ))
  (count-divisors 1 0 n)
  )

(count-divisors 6)