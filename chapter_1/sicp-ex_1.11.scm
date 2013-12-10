;; Exercise 1.11:
;;
;; A function f is defined by the rule that f(n) = n if n < 3 and f(n)
;; = f(n-1) + 2f(n-2) + 3f(n-3) if n >= 3. Write a procedure that
;; computes f by means of a recursive process. Write a procedure that
;; computes f by means of an iterative process.


;; Solution
;;
;; A procedure that generates a recursive process. This basically
;; mimicks the mathematical definition of the function.

(define (fRecursive n)
  (cond ((< n 3) n)
        ((+ (fRecursive (- n 1))
            (* 2 (fRecursive (- n 2)))
            (* 3 (fRecursive (- n 3)))))))

;; A procedure that generates an iterative process.It took me quite a
;; bit of thinking to come up with this version of the procedure. What
;; helped was to think that the fIterativeHelper method's parameters
;; should have all the information needed to compute f(n). In general,
;; to compute f(n), we need to know f(n-1), f(n-2) and f(n-3). This
;; meant that we would need atleast three parameters, one each for
;; f(n-1), f(n-2) and f(n-3). However, we also need the smallest
;; number at which the iterative procedure can be applied, and that
;; was 3 from the definition of the function.

(define (fIterative n)
  (if (< n 3) n
      (fIterativeHelper 2 1 0 n)))

(define (fIterativeHelper a b c n)
  (if (= n 3) (fn a b c)
      (fIterativeHelper (fn a b c) a b (- n 1))))

(define (fn a b c)
  (+ a (* 2 b) (* 3 c)))
