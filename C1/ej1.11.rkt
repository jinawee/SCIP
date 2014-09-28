;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ej1.11) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (f n)(
  if (< n 3) n
  (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3)))))
  )

(define (g a b c  n)
  (if (= n 0) c
      (g (+ a (* 2 b) (* 3 c)) a b (- n 1))))  