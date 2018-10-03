#lang racket/base

(require rackunit)

(define (last-pair item)
  (if (null? (cdr item))
    item
    (last-pair (cdr item))))

(check-equal? (last-pair (list 1 32 93 34 5 17 9)) `(9) (printf "test1 2.17 passed"))