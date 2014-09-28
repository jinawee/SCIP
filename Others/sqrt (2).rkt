(define (mean x y) (/ (+ x y) 2))

(define (abs x) (if (> x 0) x (- x)))

(define (sqrt x guess) 
  (if ( < (abs (- x (* guess guess))) 0.00001 )
     guess
     (sqrt x (mean guess (/ x guess)))))