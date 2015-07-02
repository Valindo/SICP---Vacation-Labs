(define (check a b c n)
  (if (< n 3) a
      (check (+ a (* 2 b ) (* 3 c)) a b (-1+ n))))

(define (f n)
  (if (< n 3) n
      (check 2 1 0 n)))