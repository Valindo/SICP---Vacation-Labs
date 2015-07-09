(define test (list 1 2 3 4 5 6 7))
(define (list-trav items n)
  (if (= n 0)
      (car items)
      (list-trav (cdr items) (- n 1))))

(list-trav test 4)

(define (count items)
  (if (null? items)
      0
      (+ 1 (count (cdr items)))))

(count test)