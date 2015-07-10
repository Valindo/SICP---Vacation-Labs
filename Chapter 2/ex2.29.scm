(define (make-mobile left right)
  (list left right))

(define (make-branch len structure)
  (list len structure))

(define (left-branch x) (car x))

(define (right-branch x) (cdr x))

(define (branch-length x) (car x))

(define (branch-struct x) (cdr x))

; Not done