#lang racket

;;; Function to sum the squared list and retrieve the square root
(define (supercalifragilisticexpialidocious ls)
    (let ((dLs (map (lambda (x)(* x x)) ls)))
      (let loop((nLs dLs)(n 0))
        (if (null? nLs)
            (sqrt n)
            (loop (cdr nLs) (+ n (car nLs)))))))

;;; Test 
(supercalifragilisticexpialidocious '(1 2 3 4 5))