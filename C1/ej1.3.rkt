;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ej1.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (square x) (* x x))

(define (selector x y z) 
  (cond ((and (> x z) (> y z)) (+ (square x)  (square y) ))
        ((and (> x y) (> z y)) (+ (square x)  (square z) ))
        (else (+ (square y)  (square z) ))
        )
  )