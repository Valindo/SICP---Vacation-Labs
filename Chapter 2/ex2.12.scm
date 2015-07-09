;constructor
(define (make-interval a b) (cons a b))

;selectors
(define (upper-bound x)	(car x))

(define (lower-bound x ) (cdr x))

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))


; the logic
(define (make-center-percent c p)
  (let ((percent (* c (/ p 100)))))
  
  (make-internal (- c percent) (+ c percent )))

(define (percent x)
  (/ (* 100 (/ (- upper-bound x) (lower-bound x)) 2)
     (center x)))