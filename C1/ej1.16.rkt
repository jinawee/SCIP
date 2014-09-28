(define (is_even x) 
  (= (remainder x 2) 0))

(define (square x) (* x x))

(define (pow a b n)
  (cond ((= n 0) a)
         ((is_even n) (pow a (square b) (/ n 2)))
         (else (pow (* a b) b (- n 1)))))


(define (fast_pow x n) (pow 1 x n))
