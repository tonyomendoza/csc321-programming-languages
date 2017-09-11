#lang racket

;;; Absolute Value function
(define (abs n)
  (* n
     (if (< n 0)
         -1
         1)))

;;; Reciprocal function
(define (recp n)
  (if (= n 0)
         false
         (/ 1 n)))

;;; Test abs
(abs -2)

;;; Test recp
(recp -3)
(recp 1/2)
(recp 0)