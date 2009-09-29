;; SICP 1.1
;; Exercise 1.5

(load "Users/njackson/lisp/sicp/week01/section_1.1.7.scm")

;; Alyssa P. Hacker doesn't see why if needs to be provided as a special form. ``Why can't I 
;; just define it as an ordinary procedure in terms of cond?'' she asks. Alyssa's friend Eva 
;; Lu Ator claims this can indeed be done, and she defines a new version of if:

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

;; Eva demonstrates the program for Alyssa:
(new-if (= 2 3) 0 5)
(new-if (= 1 1) 0 5)

;; Delighted, Alyssa uses new-if to rewrite the square-root program:
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

;; What happens when Alyssa attempts to use this to compute square roots? Explain.

;; ANSWER

;; The function call evaluates all of it's arguments before getting called. In this case, the 
;; predicate, then-clause, and else-clause will all be evaluated before getting applied to 
;; new-if.
;; The special form if doesn't follow applicative order since it doesn't evaluate all of it's 
;; arguments. Applicative order cannot preserve the logic control to prevent it from 
;; executing the wrong form.

;; When she tries using new-if to compute square roots, sqrt-iter will always recurse and she 
;; will be stuck in an infinite recursion.