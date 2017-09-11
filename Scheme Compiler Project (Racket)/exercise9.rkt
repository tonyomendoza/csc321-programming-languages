#lang racket

;;; Function to count the number of items in a list
(define (listCount ls)
  (if (null? ls)
      0
      (+ 1 (listCount (cdr ls)))))

;;; Function to summate the numbers in a list
(define (summateList ls)
    (cond
      ((null? ls) 0)
      ((list? (car ls)) (+ (summateList (car ls)) (summateList (cdr ls))))
      (else (+ (car ls) (summateList (cdr ls))))))

;;; Test listCount
(listCount '(11 92 83 41 53 69 67 18 39))

;;; Test summation
(summateList '(3 (11 55) 92 83 41 53 69 67 18 39))

