#lang racket/base

(define (make interval x y) (cons x y))

(define (upper-bound interval) (cdr interval))

(define (lower-bound interval) (car interval))