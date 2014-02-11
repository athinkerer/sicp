;; Exercise 1.29: Simpson’s Rule is a more accurate method of numerical
;; integration than the method illustrated above.  Using Simpson’s Rule,
;; the integral of a function f between a and b is approximated as

;; (h/3) * (y0 + 4y1 + 2y2 + 4y3 + 2y4 + ... + 2yn-2 + 4yn-1 + yn)

;; where h = (b - a) / n, for some even integer n, and yk = f (a +
;; kh). (Increasing n increases the accuracy of the approximation.)
;; Define a procedure that takes as arguments f , a, b, and n and returns
;; the value of the integral, computed using Simpson’s Rule. Use your
;; procedure to integrate cube between 0 and 1 (with n = 100 and n =
;; 1000), and compare the results to those of the integral procedure
;; shown above.

;; Solution
(define (integral f a b n)
  (define (h) (/ (- b a ) n))
  
  (define (coeff k)
    (cond ((or (= k 0) (= k n)) 1)
	  ((even? k) 2)
	  (else 4)))

  (define (sum k)
    (if (> k n)
	0
	(+ (* (coeff k) 
	      (f (+ a (* k (h))))) 
	   (sum (+ k 1)))))

  (* (/ (h) 3)
     (sum 0)))
