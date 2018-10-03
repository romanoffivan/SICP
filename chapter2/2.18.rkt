#lang racket/base

(require rackunit)

(define (reverse item)
  (if (null? (cdr item))
    item
    (append (reverse (cdr item)) (list (car item)))))

(check-equal? (reverse (list 1 32 93 34 5 17 9)) `(9 17 5 34 93 32 1) (printf "test 2.18 passed"))