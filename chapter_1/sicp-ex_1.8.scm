(define (cubeRootIter guess x) (if (goodEnough? guess x)
                                guess
                                (cubeRootIter (improve guess x) x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (square a) (* a a))

(define (goodEnough? guess x)
  (< (abs (- (improve guess x) guess))
     (* guess 0.000001)))

(define (cubeRoot x) (cubeRootIter 1.0 x))
