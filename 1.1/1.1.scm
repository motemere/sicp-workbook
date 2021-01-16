(define true #t)

(define false #f)

(define pi 3.14159)

(define (circumference radius) 
  (* 2 pi radius))

(define (square x) 
  (* x x))

(define (sum-of-squares x y) 
  (+ (square x) (square y)))

; (define (abs x)
;   (cond ((> x 0) x)
;         ((= x 0) 0)
;         ((< x 0) (- x))))

; (define (abs x)
;   (cond ((< x 0) (- x))
;         (else x)))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (>= x y)
  (or (> x y) (= x y)))


; Извлечение квадратного корня методом Ньютона
; в итеративном процессе:

(define (square-iter guess x)
  (if (good-enough? guess x)
      guess
      (square-iter (improve guess x) x)))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (square-iter 1.0 x))

; (display (sqrt 2)) ; => 1.4142156862745097