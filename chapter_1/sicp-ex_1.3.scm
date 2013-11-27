(define (square a)
  (* a a))

(define (sumOfSquares a b)
  (+ (square a) (square b)))

(define (sumOfLargestSquares a b c)
  (cond ((= a (max a b))
         (sumOfSquares a (max b c)))
        (else (sumOfSquares b (max a c)))))
