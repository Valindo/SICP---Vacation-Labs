(define (sum term a next b)
  (if (> a b) 
      0
      (+ (term a ) (sum term (next a) next b))))

(define (product term a next b)
  (if (> a b)
      1
      (* (term a) (product term (next a) next b))))


(define (accumlator combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
                (accumlator combiner null-value term (next a) next b))))