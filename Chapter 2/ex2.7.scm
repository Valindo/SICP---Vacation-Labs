;constructor
(define (make-interval a b) (cons a b))

;selectors
(define (upper-bound x)	(car x))

(define (lower-bound x ) (cdr x))
