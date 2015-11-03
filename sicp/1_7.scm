;;; 使用基于差值定义的判定函数时:
;;; 在对大数开方时，优化猜数函数造成猜数的改变量会大于判定用的阈值，导致程序陷入死循环；
;;; 小于判定用阈值的数则无法使用本程序进行计算。

;;; 优化如下，基于比例定义判定函数，当猜数平方小于被开方数比例小于千分之一时终止循环。

(define (sqrt x)
    (define (good-enough? guess)          ;基于比例定义的判定函数
        (< (abs (- (/ (square guess) x) 1.0)) 0.001))
    (define (improve guess)           ;优化猜数函数
        (average guess (/ x guess)))
    (define (average x y) 
        (/ (+ x y) 2))
    (define (sqrt-iter guess)  
        (if (good-enough? guess)
            guess
            (sqrt-iter (improve guess))))
    (sqrt-iter 1.0))


;;; 输入测试
;;;1 ]=> (load "1_7.scm")

;Loading "1_7.scm"... done
;Value: sqrt

;;;1 ]=> (sqrt 4)

;Value: 2.000609756097561

;;;1 ]=> (sqrt 10)

;Value: 3.16245562280389

;;;1 ]=> (sqrt 9)

;Value: 3.00009155413138

;;;1 ]=> (sqrt 0.0009)

;Value: 3.0000012746348552e-2

;;;1 ]=> (sqrt 900000000000)

;Value: 948957.4692549754

;;; 另外一个思路是比较新的猜数和之前的猜数变化的比率，如果小于千分之一我们也可以认为循环可以终止

;(define (other-sqrt x)
;    (define (good-enough? old-guess new-guess)          ;基于猜数变化比例定义的判定函数
;        (< (abs (- (/ old-guess new-guess) 1.0)) 0.001))
;    (define (improve guess)         ;优化猜数函数
;        (average guess (/ x guess)))
;    (define (average x y)
;        (/ (+ x y) 2))
;    (define (sqrt-iter guess)
;        (if (good-enough? guess (improve guess))
;            (improve guess)
;            (sqrt-iter (improve guess))))
;    (sqrt-iter 1.0))