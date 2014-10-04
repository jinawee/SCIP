(define (make-segment x y) (cons x y))

(define (start-segment A) (car A))

(define (end-segment A) (cdr A))

(define (make-point x y) (cons x y))

(define (x-point a) (car a))

(define (y-point a) (cdr a))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (mid-point A)
  (define (plus a b) (make-point (+ (x-point a) (x-point b)) (+ (y-point a) (y-point b))  ))
  (define (times k a) (make-point (*  k (x-point a)) (* k (y-point a))))
  (times  .5 (plus (end-segment A) (start-segment A) ) ))

(define b (make-point -1 2))
(define a (make-point 3 -6))
(define A (make-segment a b))
(mid-point A)