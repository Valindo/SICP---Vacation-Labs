(define (square-list items)
  (if (null? items)
      0
      (cons (square (car items)) (square-list (cdr items)))))

; added 0 because I dont know to represent null

(define (map proc items)
  (if (null? items)
      0
      (cons (proc (car items))
            (map proc (cdr items)))))

(define (sqaure-list-map items)
  (map (lambda (x) (square x)) items))

; once again, I dont know to represent nil