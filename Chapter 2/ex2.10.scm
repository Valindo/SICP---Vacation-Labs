(define (make-interval a b) (cons a b))

;selectors
(define (upper-bound x)	(car x))

(define (lower-bound x ) (cdr x))

; no patience to test this it should work!

(define (div-interval x y)
  (if (or (= (upper-bound y) 0) (= (lower-bound y) 0))
      (error "Divide by 0 bitches")
      (mul-interval (/ 1.0 (upper-bound y)) (/ 1.0 (lower-bound y)))))
