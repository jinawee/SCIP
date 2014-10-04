
;Recursive definition
(define (accumulate-r combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate-r combiner null-value term (next a) next b))))

;Iterative definition
(define (accumulate-i combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner result (term a)))))
  (iter a null-value))
             


;Example of a summation
(accumulate-i (lambda (x y) (+ x y)) 0 (lambda (x) (* x x x)) 1 (lambda (x) (+ x 1)) 100)