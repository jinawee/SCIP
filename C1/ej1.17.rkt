(define (double x) (* x 2))

(define (half x) (/ x 2))

(define (is_even x) 
  (= (remainder x 2) 0))

(define (multiply a b)
  (cond ((= b 1) a)
        ((is_even b) (multiply (double a) (half b)))
        (else (+ (multiply a (- b 1)) a))))
        
        