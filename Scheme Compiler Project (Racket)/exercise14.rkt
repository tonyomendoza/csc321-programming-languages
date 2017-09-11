#lang racket

;;; Function to count the elements of a list
(define (listCount ls)
      (let loop((nLs ls)(n 0))
        (if (null? nLs)
            n
            (loop (cdr nLs) (+ n 1)))))

;;; Function to sort the lists by their length
(define (sortLists ls1 ls2)
    (if (>= (listCount ls1) (listCount ls2))
        (cons '("Sort (desc): ") (cons ls1 ls2))
        (cons '("Sort (desc): ") (cons ls2 ls1))))

;;; Test sortLists
(define list1 '(1 2 3 4 7))
(define list2 '(5 6 8))
(sortLists list1 list2)