#lang racket
(define (my-identity x)
  x
  )

(define (my-compose f g)
  (define (h x)
    (f (g x))
    )
  h)

(define (my-negate p?)
  (lambda (x) (not (p? x)))
)

(define (my-curry f x)
  f(x)
  )

(my-identity 5)
((my-compose my-identity my-identity) 5)
((my-negate (lambda (x) (= (remainder x 2) 0))) 6)


