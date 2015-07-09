;constructor
(define (make-interval a b) (cons a b))

;selectors
(define (upper-bound x)	(car x))

(define (lower-bound x ) (cdr x))

(define (sub-interval x y)
  (make-interval (- (lower-bound x ) (lower-bound y))
                 (- (upper-bound x ) (upper-bound y))))
