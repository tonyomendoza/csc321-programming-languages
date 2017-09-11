#lang racket

;;; Function to return a letter grade based on score
(define (letterGrade score)
   (cond
     ((<= 100 score) "A+, LOL impossible!")
     ((>= 99 score 80) "A")
     ((>= 79 score 60) "B")
     ((>= 59 score 40) "C")
     (else "D")))

;;; Test letterGrade
(letterGrade 101)
(letterGrade 93)
(letterGrade 65)
(letterGrade 49)
(letterGrade 24)
