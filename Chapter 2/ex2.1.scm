(define (make-rat n d)
	(let ((g (gcd n d)))
		(cond ((and (< n  0) (< d  0)) (cons (/ (- n ) g) (/ (- d) g)))
        ((< d 0) (cons (/ (if (< n 0) (+ n) n) g) (/ d g)))
        ((and (> n 0) (> d 0)) (cons (/ n g) (/ d g))))))

;No patience to look after all cases :|
