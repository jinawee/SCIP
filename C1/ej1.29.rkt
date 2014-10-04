(define (cube x) (* x x x))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (inc x) (+ x 1))

(define (integral f a b n)
  (define h (/ (- b a) n))
  (define (y k) (f (+ a (* k h))))
  (define (iinc x) (+ x 2))
  (* (/ h 3) (+ (y 0) (y n)  (* 4 (sum y 1 iinc (- n 1))) (* 2 (sum y 2 iinc (- n 2))))))
  
  
     
             
