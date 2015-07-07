; factorial code
(define (product term a next b)
  (if (> a b) 
      1
      (* (term a)
         (product term (next a) next b))))

;iteratively
(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))



(define (inc x) (+ x 1))
(define (identity x)x)



(define (factorial x )
  (product identity 1 inc x))

(define (pi-approx n)
  (define (next x)
    (+ x 2))
  (define (f n)
    (/ (* n (next n)) (* (+ n 1) (+ n 1))))
  (* (product f 2 next (* 2 n))))