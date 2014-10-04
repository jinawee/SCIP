(define (is_even x) 
  (= (remainder x 2) 0))

(define (double x) (+ x x))

(define (halve x) (/ x 2))

(define (imultiply a b r)
  (cond ((= b 0) r)
        ((is_even b) (imultiply (double a)  (halve b) r))
        (else (imultiply a (- b 1) (+ r a)))))

(define (multiply a b) (imultiply a b 0))