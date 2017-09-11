#lang racket

;;; Function to return the product if all three arguments are positive
(define (posAndProd rA rB rC)
   (if (and (> rA 0)(> rB 0)(> rC 0))
         (* rA rB rC)
         false))

;;; Function to return the product if one of the three arguments are negative
(define (nevOrProd rA rB rC)
   (if (or (< rA 0)(< rB 0)(< rC 0))
         (* rA rB rC)
         false))

;;; Test posAndProd
(posAndProd 2.5 3.7 3.8)
(posAndProd -2.5 3.7 -3.8)

;;; Test nevOrProd
(nevOrProd 2.5 3.7 3.8)
(nevOrProd -2.5 3.7 3.8)