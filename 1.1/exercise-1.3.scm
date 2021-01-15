(load "1.1/1.1.scm")

(define (sum-larger-square a b c)
  (cond ((and (< a b) (< a c)) (sum-of-squares b c))
        ((and (< b a) (< b c)) (sum-of-squares a c))
        (else (sum-of-squares b b))))

(sum-larger-square 1 2 2)