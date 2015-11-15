;;; new-if.scm

(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)))


;;; 如果使用由它定义的牛顿法求平方根函数则会报错：

(define (sqrt x)
    (define (good-enough? guess)          ;基于比例定义的判定函数
        (< (abs (- (/ (square guess) x) 1.0)) 0.001))
    (define (improve guess)           ;优化猜数
        (average guess (/ x guess)))
    (define (sqrt-iter guess)  
        (new-if (good-enough? guess)          ; <-- new-if 在这里，替换成 if 即可正常使用
            guess
            (sqrt-iter (guess))))
    (sqrt-iter 1.0)
    )

;;; 分析如下:
;;; Lisp 采用应用序求值，因此 new-if 作为普通函数，传入的参数都会被求值后再代入函数应用。
;;; 而 if 作为特殊形式, 只执行条件为真的分支。
;;; 因此 new-if 不能取代 if 。