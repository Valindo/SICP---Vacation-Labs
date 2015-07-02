(define (average x y)
  		(/ (+ x y ) 2)
)

(define (improve guess x)
		(average guess(/ x guess))  
)

(define (good-enough? guess1 guess2)
		(< (abs (- guess1 guess2)) 
     			(expt 10 (- 6))
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

(fsqroot 9)
