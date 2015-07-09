(define (empty? coins)
  (null? coins))

(define (but-the-first-kind coins)
  (cdr coins))

(define (first-denomination coins)
  (car coins))

(define (cc amount kinds-of-coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (empty? kinds-of-coins)) 0)
        (else (+ (cc amount (but-the-first-kind kinds-of-coins))
                 (cc (- amount (first-denomination kinds-of-coins))
                 kinds-of-coins)))))

