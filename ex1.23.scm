(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display "***")
  (display elapsed-time))

(define (search-for-primes a b)
  ((if (even? a)
      (search-for-primes (+ a 1) b)
      (cond ((< a b) (timed-prime-test a) (search-for-primes (+ a 2) b))))))

(define (even? n)
  (= (remainder n 2) 0))

(define (sd n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divdes? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divdes? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (sd n)))