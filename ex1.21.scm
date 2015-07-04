(define (sd n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divdes? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divdes? a b)
  (= (remainder b a) 0))

(sd 199) ;199
(sd 1999) ;1999
(sd 19999) ;7

(define (prime? n)
  (= n (sd n)))