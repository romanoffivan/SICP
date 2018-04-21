#lang racket/base

(require rackunit)

(define (func n)
  (if (< n 3)
      n
      (+ (func (- n 1))
         (* 2 (func (- n 2)))
         (* 3 (func (- n 3))))))

(check-equal? (func 0) 0 (printf "test #1 1.11 passed"))

(check-equal? (func 5) 25 (printf "test #2 1.11 passed"))