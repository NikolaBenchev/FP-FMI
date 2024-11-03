#lang racket

(define (sum-of-digits n)
  (define (sum-of-digits sum curr)
    (if (= curr 0)
        sum
        (sum-of-digits (+ sum (remainder curr 10)) (quotient curr 10))
    )
  )
  (sum-of-digits 0 n)
  )

(define (endurance a)
  (define(endurance counter curr)
    (if (< curr 10)
        counter
        (endurance (+ counter 1) (sum-of-digits curr))
    )
  )
  (endurance 0 a)
  )

(define (number-of-digits n)
  (define (number-of-digits counter curr)
    (if (= curr 0)
        counter
        (number-of-digits (+ counter 1) (quotient curr 10))
        )
    )
  (number-of-digits 0 n)
  )

(define (min-endurance-max-length a b)
  (define (min-endurance-max-length minEndurance minNum curr max)
    (if(> curr max)
       minNum
       (cond
         [(or (> minEndurance (endurance curr)) (and (= minEndurance (endurance curr)) (> (number-of-digits curr) (number-of-digits minNum))))
          (min-endurance-max-length (endurance curr) curr (+ curr 1) max)]
         [else (min-endurance-max-length minEndurance minNum (+ curr 1) max)]
         )
    )
    )
  (min-endurance-max-length (endurance a) a (+ a 1) b)
  )

(min-endurance-max-length 333 1000)
(min-endurance-max-length 333 2000)
(min-endurance-max-length 356 460)
(min-endurance-max-length 498 701)
(min-endurance-max-length 583 889)
(min-endurance-max-length 34 621)
(min-endurance-max-length 234 651)


(define (get-next-prediction-row data)
  (define (get-next-prediction-row index data)
    (if (= index (- (length data) 1))
        0
        (- (list-ref data (+ index 1)) (list-ref data index)) 
        )
  )
  (map (lambda (a) (get-next-prediction-row a data)) (range (- (length data) 1)))
  )

(define(sum-predictions strategy data)
  (define (sum-predictions index data)
    (if (andmap (lambda (a) (= a 0)) data)
      0
      (if(= index 0)
         (- (list-ref data index) (sum-predictions 0 (get-next-prediction-row data)))
         (+ (list-ref data index) (sum-predictions (- index 1) (get-next-prediction-row data)))
         )
      )
    )
  
  (if (string=? strategy "backwards")
      (sum-predictions 0 data)
      (sum-predictions (- (length data) 1) data)
      )
  )

(sum-predictions "backwards" (list 10 13 16 21 30 45))
(sum-predictions "forwards" (list 10 13 16 21 30 45))
(sum-predictions "backwards" (list 7 9 12 16 21 27 34))
