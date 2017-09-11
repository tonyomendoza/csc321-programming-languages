#lang racket

;;; Function to reverse the items in a list
(define (listReverse-tail ls)
  (listReverse-rec ls '() ))

;;; Co-function needed to reverse the items in a list
(define (listReverse-rec ls rLs)
  (if (null? ls)
      rLs
      (listReverse-rec (cdr ls) (cons (car ls) rLs) )))

;;; Function to summate the numbers in a list
(define (summateList-tail ls)
  (summateList-rec ls 0))

;;; Co-function needed to summate the numbers in a list
(define (summateList-rec ls n)
  (if (null? ls)
      n
      (summateList-rec (cdr ls) (+ (car ls) n))))

;;; Test listReverse-tail
(listReverse-tail '(11 92 83 41 53 69 67 18 39))

;;; Test summateList-tail
(summateList-tail '(11 92 83 41 53 69 67 18 39))