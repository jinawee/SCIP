(define (equivalencia n)
  (cond ((= n 1) 1)
        ((= n 2) 5)
        ((= n 3) 10)
        ((= n 4) 25)
        ((= n 5) 50)
   ))
        
(define (cc total n)
  (cond ((= total 0) 1)
        ((or (< total 0) (= n 0)) 0)
        (else (+ (cc total (- n 1)) (cc (- total (equivalencia n)) n)))))

        
(cc 100 5)