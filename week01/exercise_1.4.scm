;; SICP 1.1
;; Exercise 1.4
;; Observe that our model of evaluation allows for combinations whose operators are compound expressions. Use this observation to describe the behavior of the following procedure:
(define (a-plus-abs-b a b) ((if (> b 0) + -) a b))

;; ANSWER

;; The conditional returns either the symbol + or -. Because it returns the symbol in the position of the operator in a list, that symbol will bind to the procedure for + or - and evaluate with the arguments a and b.

;; The body of a-plus-abs-b simplifies as follows:
;; (a-plus-abs-b 1 2)
;; ((if (> 2 0) + -) 1 2)
;; (+ 1 2)

;; (a-plus-abs-b 1 -2)
;; ((if (> -2 0) + -) 1 2)
;; (- 1 -2)