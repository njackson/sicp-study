;; SICP 1.1
;; Exercise 1.5
;; Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using applicative-order evaluation or normal-order evaluation. He defines the following two procedures:

(define (p) (p))
(define (test x y)
  (if (= x 0)
      0
      y))

;; Then he evaluates the expression
(test 0 (p))

;; What behavior will Ben observe with an interpreter that uses applicative-order evaluation? What behavior will he observe with an interpreter that uses normal-order evaluation? Explain your answer. (Assume that the evaluation rule for the special form if is the same whether the interpreter is using normal or applicative order: The predicate expression is evaluated first, and the result determines whether to evaluate the consequent or the alternative expression.)

;; ANSWER

;; Calling (p) is defined to call (p) in an infinite recursion
;; Therefore, when we call (test 0 (p)), we can tell if p is getting evaluated before the conditional or only when the value is needed.

;; applicative-order-evaluation:
;; calling (test 0 (p)) will evaluate the arguments before applying them to the operator. It will fall into an infinite recursion before executing the test procedure.

;; normal-order-evaluation:
;; calling (test 0 (p)) will expand first, applying (p) to the y argument of test before evaluating it. In this case, (p) will only get evaluated if (= x 0) returns #t