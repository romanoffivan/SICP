#lang racket/base

(require rackunit)

(define (make-interval x y) (cons x y))

(define (upper-bound interval) (cdr interval))

(define (lower-bound interval) (car interval))

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y))))

(define interval1 (make-interval 5 8))
(define interval2 (make-interval 4 6))

(check-equal? (sub-interval interval1 interval2) (make-interval -1 4) (printf "test 2.8 passed"))