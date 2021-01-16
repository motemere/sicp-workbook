(load "1.1/1.1.scm")

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(new-if (= 2 3) 0 5) ; it's OK, Value: 5

(define (lisa-sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (lisa-sqrt-iter (improve guess x)
                     x)))

; Мы ожидаем от new-if такого же поведения, как и от primitive if,
; но получаем превышение уровня выполнения:

; (lisa-sqrt-iter 1.0 16) ; Aborting!: maximum recursion depth exceeded

; Дело в том, что new-if работает в нормальном порядке выполнения, а значит
; стейт никогда не станет состоять только из примитивных операций.