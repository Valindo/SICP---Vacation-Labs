; factorial code
(define (product term a next b)
  (if (> a b) 
      1
      (* (term a)
         (product term (next a) next b))))

(define (inc x) (+ x 1))
(define (identity x)x)

(define (factorial x )
  (product identity 1 inc x))


(define (pi-term n)
  (if (even? n)
      (/ (+ n 2.0) (+ n 1.0))
      (/ (+ n 1.0) (+ n 2.0))))

(define (pi-approx a b)
  (* (product pi-term a inc b )) 4.0)
