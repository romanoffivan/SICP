#lang racket/base

(require rackunit)

(define (make-point x y) (cons x y))

(define (x-point p) (car p))

(define (y-point p) (cdr p))

(define (make-segment p1 p2) (cons p1 p2))

(define (start-segment seg) (car seg))

(define (end-segment seg) (cdr seg))

(define (mid-point s)
  (let ((a (start-segment s))
        (b (end-segment s)))
    (let ((x1 (x-point a))
          (x2 (x-point b))
          (y1 (y-point a))
          (y2 (y-point b)))
      (make-point
       (/ (+ x1 x2) 2)
       (/ (+ y1 y2) 2)))))
