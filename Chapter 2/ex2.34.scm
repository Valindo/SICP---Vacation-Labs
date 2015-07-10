(define (honer-eval x coefficient-sequence)
  (accumulate (lambda (this-coeff higher-terms) (* x (+ (* this-coeff x) higher-terms ))) 0 coefficient-sequence))

