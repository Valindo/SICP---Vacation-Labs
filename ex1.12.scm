(define (pascal row col)
  (cond ((= col 0) 1)
    ((= row col) 1)
    (else 
      (+ (pascal (-1+ row) (-1+ col)) (pascal (-1+ row) col)))))