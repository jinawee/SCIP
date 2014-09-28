;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ej1.8) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (square x) (* x x))


(define (cube x) (* x x x))


(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))


(define (improve guess x)
  (/ (+ (/ x (square guess) ) (* 2 guess) ) 3) )


(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x)
           x)))


(define (cbrt_newton x)
  (cbrt-iter 1.0 x))


(cbrt_newton 5)
