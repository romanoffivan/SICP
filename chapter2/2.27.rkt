#lang racket/base

(require rackunit)

(define (deep-reverse l)
  (if (or (null? l) (not (list? l))) 
    l
    (reverse (map deep-reverse l))))

(check-equal? (deep-reverse (list (list 1 (list 4 5) 2) (list 3 4))) `((4 3) (2 (5 4) 1)) (printf "test 2.27 passed"))