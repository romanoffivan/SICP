# lang racket/base

(define (rectangle-perimeter rectangle) 
  (* 2 (+ (rectangle-width rectangle) 
          (rectangle-height rectangle))))

(define (rectangle-area rectangle) 
  (* (rectangle-width rectangle) 
     (rectangle-height rectangle)))

(define (make-rectangle topleft width height) 
  (cons topleft (cons width height)))

(define (rectangle-topleft rectangle) 
  (car rectangle))

(define (rectangle-width rectangle) 
  (car (cdr rectangle)))

(define (rectangle-height rectangle) 
  (cdr (cdr rectangle)))