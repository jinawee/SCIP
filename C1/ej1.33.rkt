
;Recursive definition
(define (filtered-accumulate-r combiner null-value term a next b filter)
  (if (> a b)
      null-value
      (if (filter (a))
          (combiner (term a) (filtered-accumulate-r combiner null-value term (next a) next b filter))
          
           

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        (( divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(filtered-accumulate-r (lambda (x y) (+ x y)) 0 (lambda (x) x) 1 (lambda (x) (+ x 1)) 6 prime?)


