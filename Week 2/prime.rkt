#lang racket
(define(helper curr n)
  (if (= curr n)
      #t
      (if (= (remainder n curr) 0)
          #f
          (helper (+ curr 1) n)
          )
   )
  )
(define(prime? n)
  (helper 2 n)
 )

(prime? 13)