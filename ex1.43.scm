(define (square x) (* x x))
(define (inc x)	(+ x 1))

(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeated f n)
  (if (= n 1)
      f
      (compose f (repeated f (- 1 n)))))