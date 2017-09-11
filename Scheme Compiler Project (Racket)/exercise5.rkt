#lang racket

;;; add one function
(define add1 (lambda(n)
                 (+ n 1)))

;;; subtract one function
(define sub1 (lambda(n)
                 (- n 1)))

;;; test add1
(add1 10)

;;; test sub1
(sub1 10)