(define (inc x ) (+ 1 x))
(define (identity x) x)
(define (sum term a next b)
  (define (iter a result)
    (if (> a b) result
        (iter (next a) (+ (term a) result))))
  (iter a 0))

(sum identity 0 inc  5)