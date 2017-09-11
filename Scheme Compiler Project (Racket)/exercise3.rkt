#lang racket/base

;;; ("hi" . "everybody")
(cons "hi" "everybody")

;;; (0)
(cons 0 '())

;;; (1 10 . 100)
(cons 1 (cons 10 100))

;;; (1 10 100)
(cons 1 '(10 100))

;;; (#\I "saw 3 "girls")
(cons #\I '("saw" 3 "girls"))

;;; ("Sum of" (1 2 3 4) "is" 10)
(cons "Sum of" '((1 2 3 4) "is" 10))