;;; cuberoot

(define (cube-root x)
    (define (improve guess)
        (/ (/ guess 
                (+ (square x) 
                    (* 2 x)))
             3))
    (define (good-enough? guess)
        (> 0.01
            (abs (- (cube guess) 
                        x))))
    (define (cube guess)
        (* guess guess guess))
    (define (cube-root-iter guess)
        (if (good-enough? guess)
  	guess
  	(cube-root-iter (improve guess))))
    (cube-root-iter 1.0)
)