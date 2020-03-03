;;;; factorial.clj calculates the factorial of an integer.
;;;;
;;;; Input: n, an integer.
;;;; Output: the value of n!
;;;; Author: Jonathan Winkle
;;;; Date: 3/3/20
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns factorial)                                 ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; factorial() recursively generates the value of n!.
;;; Receive: n, an integer
;;; Output: The value of n!.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; direct-recursive version

(defn factorial [number]
  (if (<= number 1) 1 (* number (factorial(- number 1)))) 
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; -main is a 'driver' for the factorial() function.
;;; Input: n
;;; Output: n!
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn -main []
 (println "To calculate the factorial of an integer")
 (print " enter the integer: ") (flush)
 (let
    [ n (int (read))] 
    (println)
    (print "The factorial of " n " is " (factorial n)"\n")
 )
)

