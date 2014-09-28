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

(define (make-rectangle a b c d) 0)

(define b (make-point -1 2))
(define a (make-point 3 -6))
(define A (make-segment a b))
(mid-point A)