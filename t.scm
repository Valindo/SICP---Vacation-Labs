(define (fast-exp b a n)
  (cond ((= n 0) a)
        ((even? n) (fast-exp b (* a (square b)) (/ n 2)))
        (else (fast-exp b (* a b) (- n 1)))))

;fucking double value