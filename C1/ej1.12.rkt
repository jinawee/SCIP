;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ej1.12) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (pascal x y)
  (if (or (= y 0) (= y x)) 1
      (+ (pascal (- x 1) (- y 1)) (pascal (- x 1) y))))
              
(define (layer x y) (pascal (- x 1) (- y 1)))

(define (pascal-triangle row col) 
  (cond ((> col row) 0) 
        ((< col 0) 0) 
        ((= col 1) 1) 
        ((= 1 1) (+ (pascal-triangle (- row 1) (- col 1)) 
            (pascal-triangle (- row 1) col))))) 

(define (f x y)
  (cond ((and (= x 0) (= y 0)) 1)
        ((or (< x 0) (> x y)) 0)
        (else (+ (f x (- y 1)) (f (- x 1) (- y 1))))))
         