#lang racket/base

(require rackunit)

(define (make-point x y) (cons x y))

(define (x-point p) (car p))

(define (y-point p) (cdr p))

(define (make-segment p1 p2) (cons p1 p2))

(define (start-segment seg) (car seg))

(define (end-segment seg) (cdr seg))

(define (midpoint-segment seg)
  (make-point 
    (/ (start-segment seg) 2) 
    (/ (end-segment seg) 2)))
