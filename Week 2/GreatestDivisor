#lang racket
(define(helper curr n)
  (if(= (remainder n curr) 0)
     curr
     (helper (- curr 1) n)
     )
)
(define(greatestDivisorOf n)
  (helper (- n 1) n)
)

(greatestDivisorOf 121)