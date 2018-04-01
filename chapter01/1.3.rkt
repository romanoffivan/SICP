#lang racket/base

(require rackunit)

(define (square x) (* x x))

(define (solution x y z)
  (cond ((and (< x y) (< x z)) (+ (square y) (square z)))
        ((and (< y x) (< y z)) (+ (square x) (square z)))
        (else (+ (square x) (square y)))))

(check-equal? (solution 1 2 3) 13 (printf "test 1.3 passed"))