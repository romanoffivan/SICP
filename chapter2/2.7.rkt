#lang racket/base

(require rackunit)

(define (make-interval x y) (cons x y))

(define (upper-bound interval) (cdr interval))

(define (lower-bound interval) (car interval))

(define interval (make-interval 7 6))

(check-equal? (upper-bound interval) 6 (printf "test1 2.7 passed"))

(check-equal? (lower-bound interval) 7 (printf "test2 2.7 passed"))