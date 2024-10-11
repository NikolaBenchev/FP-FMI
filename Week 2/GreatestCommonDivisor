#lang racket
(define(helper currDivider a b)
  (if(and 
      (= (remainder a currDivider) 0)
      (= (remainder b currDivider) 0)
      )
     currDivider
     (helper (- currDivider 1) a b)
     )
  )

(define (mygcd a b)
  (if(> a b)
     (helper b a b)
     (helper a a b)
     )
  )

(mygcd 6 5)