(define (last-elem items)
  (if (null? (cdr items))
      items
      (last-elem (cdr items))))

(define test (list 1 2 3 4 5 6 7))

(last-elem test)