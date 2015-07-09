;constructor
(define (make-interval a b) (cons a b))

;selectors
(define (upper-bound x)	(car x))

(define (lower-bound x ) (cdr x))

(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 (+ (upper-bound x) (upper-bound y))))

(define (div-intervals x)
  (make-interval (/ (lower-bound x) 2.0) (/ (upper-bound x) 2.0)))

(define (check-add x)
  (+ (lower-bound x) (upper-bound x)))

(define a (make-interval 1 1))
(define b (make-interval 1 1))


(define (width x)
  (/ (- (upper-bound x) (lower-bound x)) 2.0))

(width (add-interval a b))
(check-add (div-intervals (add-interval a b)))