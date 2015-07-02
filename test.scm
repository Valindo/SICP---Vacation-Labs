(define (average x y) 
  		(/ (+ x y) 2)
)

(define (square x) 
  		(* x x)
)

(define (abs x )
		(if (< x 0) 
      		(- x) 
        	x
        )  
)

(define (improve guess x )
  		(average guess (/ x guess))
)

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) .001)
)