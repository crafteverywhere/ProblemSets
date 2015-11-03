;;; 牛顿法求立方根
;;; cuberoot

(define (cuberoot x)
    (define (improve guess)
        (/ (/ guess (+ (square x) (* 2 x))) 3))
    (define (good-enough? guess)
        (< (abs (- 1.0 (/ (cube guess) x))) 0.001))
    (define (cube guess)
        (* guess guess guess))
    (define (cuberoot-iter guess)
        (if (good-enough? guess)
  	guess 
  	(cuberoot-iter (improve guess))))
    (cuberoot-iter 1.0)
)