#lang racket/base

(require rackunit)

(define (square x)
  (* x x))

(define (square-list items)
  (if (null? items) 
    null
    (cons (square (car items)) (square-list (cdr items)))))

(define (square-list-map items)
  (map (lambda (x) (square x)) items))

(check-equal? (square-list (list 2 3 4)) `(4 9 16) (printf "test1 2.21 passed"))
(check-equal? (square-list-map (list 2 3 4)) `(4 9 16) (printf "test2 2.21 passed"))