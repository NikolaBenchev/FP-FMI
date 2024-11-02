#lang racket
(define(reverse n)
  (define(reverse curr n)
    (if (= n 0)
        curr
        (reverse (+ (* curr 10) (remainder n 10)) (quotient n 10))
        )
    )
  (reverse 0 n)
  )

(define(palindrome? n)
  (= n (reverse n))
  )

(define(countPalindromes a b)
  (define(countPalindromes curr counter max)
    (if (> curr max)
        counter
        (if (palindrome? curr)
            (countPalindromes (+ curr 1) (+ counter 1) max)
            (countPalindromes (+ curr 1) counter max)
            )
        ))
  (countPalindromes (min a b) 0 (max a b))
  )
; ans: 1231 => 4 digits => reverse n / (pow 10 digits / 2) === n % (pow 10 digits / 2)
(countPalindromes 100 203)