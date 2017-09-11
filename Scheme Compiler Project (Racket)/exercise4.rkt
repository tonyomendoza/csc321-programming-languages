#lang racket/base

;;; 0
(car '(0))

;;; '()
(cdr '(0))

;;; '(1 2 3)
(car '((1 2 3) (4 5 6)))

;;; '(2 3 . 4)
(cdr '(1 2 3 . 4))

;;; '(2 1)
(cdr (cons 3 (cons 2 (cons 1 '()))))