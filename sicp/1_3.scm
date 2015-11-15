(define (sum-two-bigger x y z)
    (define (min x y z)
        (cond
         ((and (< x y) (< x z)) x)
         ((and (< y z) (< y x)) y)
         (else z))
    )
    (- (+ x y z) (min x y z)))

;;; 中文版本翻译有错误，正确版本应该为平方和:

(define (sum-sq-two-bigger x y z)
    (define ( parameters)
    body))