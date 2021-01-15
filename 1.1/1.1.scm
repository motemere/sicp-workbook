(define true #t)

(define false #f)

(define pi 3.14159)

(define (circumference radius) 
  (* 2 pi radius))

(define (square x) 
  (* x x))

(define (sum-of-squares x y) 
  (+ (square x) (square y)))

;; (define (abs x)
;;   (cond ((> x 0) x)
;;         ((= x 0) 0)
;;         ((< x 0) (- x))))

;; (define (abs x)
;;   (cond ((< x 0) (- x))
;;         (else x)))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (>= x y)
  (or (> x y) (= x y)))
