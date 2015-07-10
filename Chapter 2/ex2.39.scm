(define nil (quote()))

(define (reverse sequence)	
  (fold-right (lambda (x y) (append y (list x))) nil sequence))