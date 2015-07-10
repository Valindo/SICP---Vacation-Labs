(define one (list 1 3 (list 5 7) 9))

(cdr ( car ( cdr ( cdr one ) ) ) )

(define two (list (list 7)))

(car (car two))

(define three (list 1 ( list 2 (list 3 (list 4 (list 5 (list 6 7)))))))

; not sure how to do this