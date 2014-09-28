(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))
             
(define (inc x) (+ x 1))

(define (iinc x) (inc (inc x)))

(define (square x) (* x x))

(define (id x) x)              
                          
(define (factorial x) (product id 1 inc x))

(define (pifourths n)  (/ (* 2.  (square (product id 4 iinc n)) (iinc n)) (square (product id 3 iinc (inc n)))))

(define (wallis max) 
  (define (left x) (/ (* 2. x) (- (* 2 x) 1)))
  (define (right x) (/ (* 2 x) (+ (* 2 x) 1)))
  (define (f x) (* (left x) (right x)))
  (product f 1 inc max))