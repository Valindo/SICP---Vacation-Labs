(define (fast-exp b a n)
  (cond ((= n 0) a)
        ((even? n) (fast-exp (square b) a (/ n 2)))
        (else (fast-exp b (* a b) (- n 1)))))

; fixed it bitches :D