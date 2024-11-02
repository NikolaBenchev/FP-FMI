#lang racket
(define(prime? n)
  (define (prime? curr max)
   (if (= max 1)
       #f
       
       (if (>= curr max)
           #t
           (if (= (remainder max curr) 0)
               #f
               (prime? (+ curr 1) max)
               )
           )
       )
    )
  (prime? 2 n)
 )

(define (sum-prime-divisors n)
  (define (sum-prime-divisors curr max)
    (if(> curr max)
       0
       (if (and (prime? curr) (= (remainder max curr) 0))
          (+ curr (sum-prime-divisors (+ curr 1) max))
          (sum-prime-divisors (+ curr 1) max)
          )
       )
    
    )
  (sum-prime-divisors 1 n)
)

(sum-prime-divisors 6)