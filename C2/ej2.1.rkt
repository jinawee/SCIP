(define (make-rat n d)
  (let ((g (gcd n d)))
    (if (< d 0) 
        (cons (- (/ n g)) (- (/ d g)))
        (cons (/ n g) (/ d g)))))


;We are using the built-in function gcd 