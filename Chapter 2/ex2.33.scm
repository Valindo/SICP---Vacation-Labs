(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x ) y)) nil sequence))

(define (append s1 s2)
  (accumulate cons s1 s2))

(define (len sequence)
  (accumulate (lambda (x y) (+ y 1)) 0 sequence))