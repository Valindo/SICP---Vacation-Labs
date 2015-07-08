(define (cont-frac n d k)
  (define (frac  i)
    (if (< i k)
        (/ (n i) (+ (d i) (frac (+ i 1))))
        (/ (n i) (d i))))
  (frac 1))

;iterative

(define (cont-fact-iter i result)
  (if (= i 0)
      result
      (cont-fact-iter (- i 1) (/ (n i) (+ (d i) result))))
  (cont-fact-iter (- k 1) (/ (n k) (d k))))
