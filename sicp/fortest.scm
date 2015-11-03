(define (other-sqrt x)
    (define (good-enough? old-guess new-guess)          ;基于猜数变化比例定义的判定函数
        (< (abs (- (/ old-guess new-guess) 1.0)) 0.001))
    (define (improve guess)         ;优化猜数函数
        (average guess (/ x guess)))
    (define (average a b)
        (/ (+ a b) 2))
    (define (sqrt-iter guess)
        (if (good-enough? guess (improve guess))
            (improve guess)
            (sqrt-iter (improve guess))))
    (sqrt-iter 1.0))