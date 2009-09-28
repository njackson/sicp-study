;; SICP 1.1
;; Exercise 1.3
;; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.

;; ANSWER

(define (square x)
  (* x x))

(define (sum-of-two-squares x y)
  (+ (square x) (square y)))

(define (sum-of-two-larger-squares x y z)
  (cond ((and (< x y) (< x z))
         (sum-of-two-squares y z))
        ((and (< y z) (< y x))
         (sum-of-two-squares x z))
        (else (sum-of-two-squares x y))))        