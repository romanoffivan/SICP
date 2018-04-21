#lang racket/base

(require rackunit)

(define (pascal-triangle row column)
  (cond ((or (< column 1) (< row column)) 0)
        ((or (= column 1) (= row column)) 1)
        (else (+ (pascal-triangle (- row 1) (- column 1))
                 (pascal-triangle (- row 1) column)))))

(check-equal? (pascal-triangle 5 3) 6 (printf "test  #1 1.12 passed"))

(check-equal? (pascal-triangle -1 -1) 0 (printf "test #2 1.12 passed"))