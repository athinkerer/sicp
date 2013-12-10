;; Exercise 1.10:
;; 
;; The following procedure computes a math- ematical
;; function called Ackermann’s function.

(define (A x y) (cond ((= y 0) 0)
                      ((= x 0) (* 2 y))
                      ((= y 1) 2)
                      (else (A (- x 1) (A x (- y 1))))))

;; What are the values of the following expressions?

(A 1 10)

(A 2 4)

(A 3 3)

;; Consider the following procedures, where A is the proce- dure
;; defined above:

(define (f n)
  (A 0 n))

(define (g n)
  (A 1 n))

(define (h n)
  (A 2 n))

(define (k n)
  (* 5 n n))

;; Give concise mathematical definitions for the functions com- puted
;; by the procedures f, g, and h for positive integer val- ues of
;; n. For example, (k n) computes 5(n^2).


;; Solution
;;
;; (A 1 10)
;; (A 0 (A 1 9))
;; (A 0 (A 0 (A 1 8)))
;; (A 0 (A 0 (A 0 (A 1 7))))
;; (A 0 (A 0 (A 0 (A 0 (A 1 6)))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 5))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 4)))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 3))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 2)))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2)))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 4))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 8)))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 16))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 32)))))
;; (A 0 (A 0 (A 0 (A 0 64))))
;; (A 0 (A 0 (A 0 128)))
;; (A 0 (A 0 256))
;; (A 0 512)
;; 1024

;; (A 2 4)
;; (A 1 (A 2 3))
;; (A 1 (A 1 (A 2 2)))
;; (A 1 (A 1 (A 1 (A 2 1))))
;; (A 1 (A 1 (A 1 2)))
;; (A 1 (A 1 (A 0 (A 1 1))))
;; (A 1 (A 1 (A 0 2)))
;; (A 1 (A 1 4))
;; (A 1 (A 0 (A 1 3)))
;; (A 1 (A 0 (A 0 (A 1 2))))
;; (A 1 (A 0 (A 0 (A 0 (A 1 1)))))
;; (A 1 (A 0 (A 0 (A 0 2))))
;; (A 1 (A 0 (A 0 4)))
;; (A 1 (A 0 8))
;; (A 1 16)
;; (A 0 (A 1 15))
;; (A 0 (A 0 (A 1 14)))
;; (A 0 (A 0 (A 0 (A 1 13))))
;; (A 0 (A 0 (A 0 (A 0 (A 1 12)))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 11))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 10))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 9))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 8)))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 7))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 6)))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 5)))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 4)))))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 3)))))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 2)))))))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1)))))))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2)))))))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 4))))))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 8)))))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 16))))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 32))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 64))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 128)))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 256))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 512)))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 1024))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 2048)))))
;; (A 0 (A 0 (A 0 (A 0 4096))))
;; (A 0 (A 0 (A 0 8192)))
;; (A 0 (A 0 16384))
;; (A 0 32768)
;; 65536

;; (A 3 3)
;; (A 2 (A 3 2))
;; (A 2 (A 2 (A 3 1)))
;; (A 2 (A 2 2))
;; (A 2 (A 1 (A 2 1)))
;; (A 2 (A 1 2))
;; (A 2 (A 0 (A 1 1)))
;; (A 2 (A 0 2))
;; (A 2 4)
;; (A 1 (A 2 3))
;; (A 1 (A 1 (A 2 2)))
;; (A 1 (A 1 (A 1 (A 2 1))))
;; (A 1 (A 1 (A 1 2)))
;; (A 1 (A 1 (A 0 (A 1 1))))
;; (A 1 (A 1 (A 0 2)))
;; (A 1 (A 1 4))
;; (A 1 (A 0 (A 1 3)))
;; (A 1 (A 0 (A 0 (A 1 2))))
;; (A 1 (A 0 (A 0 (A 0 (A 1 1)))))
;; (A 1 (A 0 (A 0 (A 0 2))))
;; (A 1 (A 0 (A 0 4)))
;; (A 1 (A 0 8))
;; (A 1 16)
;; (A 0 (A 1 15))
;; (A 0 (A 0 (A 1 14)))
;; (A 0 (A 0 (A 0 (A 1 13))))
;; (A 0 (A 0 (A 0 (A 0 (A 1 12)))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 11))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 10))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 9))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 8)))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 7))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 6)))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 5)))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 4)))))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 3)))))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 2)))))))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1)))))))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2)))))))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 4))))))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 8)))))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 16))))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 32))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 64))))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 128)))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 256))))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 512)))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 1024))))))
;; (A 0 (A 0 (A 0 (A 0 (A 0 2048)))))
;; (A 0 (A 0 (A 0 (A 0 4096))))
;; (A 0 (A 0 (A 0 8192)))
;; (A 0 (A 0 16384))
;; (A 0 32768)
;; 65536

;; f(n) = (A 0 n)
;;      = 2n

;; g(n) = (A 1 n)
;;      = (A 0 (A 1 (- n 1)))
;;      = (A 0 (A 0 (A 1 (- n 2))))
;;      = (A 0 (A 0 (A 0 (A 1 (- n 3)))))
;;      = (A 0 (A 0 (A 0 (A 0 (A 1 (- n 4))))))
;;      ...
;;      ...
;;
;;      At step m we will have m deferred calls to the Ackermann's
;;      function with parameter x = 0 (parameter y being the result of
;;      the deferred call) and a final call to the function with
;;      parameter x = 0 and and parameter y = n - x. The chain of
;;      deferred operations will continue to build until the parameter
;;      y obtains the value 1, that is, when n - m = 1, which is at m
;;      = n - 1. At step m = n - 1, there will be n - 1 deferred
;;      Ackermann's calls with parameter x = 0 and a final call with
;;      parameter x = 1 and parameter y = 1. The final call evaluates
;;      to 2 and each of the deferred operations multiplies the
;;      parameter y by 2 [(A 0 n) always evaluates to (* 2 n)]. So, we
;;      can write the function as:
;;
;; g(n) = (2^(n - 1)) * 2
;;      = 2^n

;; h(n) = (A 2 n)
;;      = (A 1 (A 2 (- n 1)))
;;      = (A 1 (A 1 (A 2 (- n 2))))
;;      = (A 1 (A 1 (A 1 (A 2 (- n 3)))))
;;      = (A 1 (A 1 (A 1 (A 1 (A 2 (- n 4))))))
;;
;;      At step m we will have m deferred calls to the Ackermann's
;;      function with parameter x = 1 (parameter y being the result of
;;      the deferred call) and a final call to the function with
;;      parameters x = 2 and y = n - m. The chain of deferred
;;      operations will continue to build until the value (- n m),
;;      which is the parameter y of the last call to the function,
;;      reaches 1. At this point, the chain will have n - 1 deferred
;;      Ackermann's calls with argument x = 1 and a final call of type
;;      (A 2 1) [the last call always evaluates to 2]. This will
;;      result in the function:
;;
;; h(n) = 2 ↑ n

;; k(n) = (* 5 n n)
;;      = 5(n^2)
