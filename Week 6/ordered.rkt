#lang racket

(define (ordered? list pred)
  (define (ordered? index list pred)
    (if (= index (- (length list) 2))
        #t
        (if (pred (list-ref list index) (list-ref list (+ index 1)))
            (ordered? (+ index 1) list pred)
            #f
            )
        ) 
    )
  (ordered? 0 list pred)
  )

(ordered? (list 1 2 3 4) <)