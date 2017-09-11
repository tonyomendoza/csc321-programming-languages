#lang racket

;;; Function to make a list from 0 to n
(define (dubz ls)
  (map (lambda (x)(* x 2)) ls))

;;; Test dubz
(dubz '(1 2 3 4 5))