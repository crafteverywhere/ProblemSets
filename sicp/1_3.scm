(define (sum_two_bigger x y z)
    (define (min x y z)
        (cond
         ((and (< x y) (< x z)) x)
         ((and (< y z) (< y x)) y)
         (else z))
    )
    (- (+ x y z) (min x y z)))