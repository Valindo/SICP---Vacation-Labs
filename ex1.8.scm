(define (average x y)
  		(/ (+ x y ) 3)
)

;(define (square x) (* x x ))

(define (improve guess x)
  		(average (/ x (expt guess 2)) (* 2 guess))
		 
)

(define (good-enough? guess1 guess2)
		(< (abs (- guess1 guess2)) 
     			;(expt 10 (- 6))
        		0.001
        )  
)

(define (sqroot guess x)
		(if (good-enough? guess (improve guess x))
            guess
            (sqroot (improve guess x) x)        )
)


(define (fsqroot x) 
  		(sqroot 1 x)
)

(fsqroot 10)
