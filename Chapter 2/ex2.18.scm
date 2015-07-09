(define (reverse items)
  (if (null? items)
      nil
      (append (reverse (cdr items)) (cons (car items) ()))))

(define test (list 1 2 3 4 5 6 7))

(reverse test)