;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ej1.9) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (inc x) (+ x 1))

(define (dec x) (- x 1))


(define (+_rec a b)
  (if (= a 0)
      b
      (inc (+_rec (dec a) b))))


(define (+_itr a b)
  (if (= a 0)
      b
      (+_itr (dec a) (inc b))))

(+_rec 4 5)
(+_itr 4 5)