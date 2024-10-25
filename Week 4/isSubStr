#lang racket
(define (int-list n)
  (cond
    [(= n 0) (list)]
    [else (append (int-list (quotient n 10)) (list (remainder n 10)))]
    )
  )

(define (substr? a b)
  (define (substr? indexA indexB a b)
  (cond
    [(= indexA (length a)) #t]
    [(= indexB (length b)) #f]
    [(= (list-ref a indexA) (list-ref b indexB)) (substr? (+ indexA 1) (+ indexB 1) a b)]
    [else (substr? 0 (+ indexB 1) a b)]
    )
  )
  (substr? 0 0 (int-list a) (int-list b))
)

(substr? 113 1113)