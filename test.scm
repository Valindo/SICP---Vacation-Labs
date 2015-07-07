(define (cube x)
  (* x x x))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a) (sum term (next a) next b))))

(define (sim f a b n)
  (define (add-h x)
    (+ x h))
  (define h
    (/ (- b a) n))
  (define (summand x)
    (define multiplier
      (cond ((or (= x a) (= x b) 1))))))