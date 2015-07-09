;a-------b
;|     |
;|     |
;c-------d


(define (make-point x y) (cons x y))

(define (x-point x) (car x))

(define (y-point y) (cdr y))

(define (dimension x y) (cons x y))

(define (sqr x) (* x x))

(define (len x) (car x))

(define (width x) (cdr x))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (distance a b c)
  (dimension (sqrt (+ (sqr (- (x-point b) (x-point a))) 
                      (sqr (- (y-point b) (y-point a)))))
             (sqrt (+ (sqr (- (x-point c) (x-point b)))
                      (sqr (- (y-point c) (y-point b)))))))

(define (area x) (* (len x) (width x)))

(define (perimeter x) (* 2 (+ (len x) (width x))))

(define a (make-point 1 2))
(define b (make-point 5 2))
(define c (make-point 1 1))
(define d (make-point 5 1))

(print-point (area (distance (a b c))))