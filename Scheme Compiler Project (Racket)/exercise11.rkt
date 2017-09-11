#lang racket

;;; Function to make a list from 0 to n
(define (makeList n)
  (let loop((i n) (ls '()))
  (if (< i 0)
      ls
      (loop (- i 1) (cons i ls) ))))

;;; Test makeList
(makeList 17)