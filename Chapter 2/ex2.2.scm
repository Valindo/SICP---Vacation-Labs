(define (make-point x y)
  (cons x y))

(define (x-point x)
  (car x))

(define (y-point y)
  (cdr y))

(define (mid-point x1 x2)
  (make-point (/ (+ (x-point x1) (x-point x2)) 2) (/ (+ (y-point x1) (y-point x2)) 2)))


(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define start-segment (make-point 1 2))
(print-point start-segment)
(define end-segment (make-point 2 5))
(print-point end-segment)
(print-point (mid-point start-segment end))