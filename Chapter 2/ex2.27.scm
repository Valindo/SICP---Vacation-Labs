(define nil (quote()))

(define (deep-reverse items)
  (cond ((null? items) nil)
        ((pair? (car items))
         (append (deep-reverse (cdr items))
                 (list (deep-reverse (car items)))))
  (else (append (deep-reverse (cdr items))
                (list (car items))))))