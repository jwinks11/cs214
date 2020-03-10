;;;; quadratic.clj computes the roots of a quadratic equation
;;;;
;;;; Completed by: Jonathan Winkle
;;;; Date: 3/10/20
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns quadratic)      ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; quadform() computes the roots of a quadratic equation
;;; Receive: a, b, c, the coefficients         
;;; PRE: a >= 1 and b^2 - 4ac >= 0
;;; Return: a vector containing the two roots of the equation, or false
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn quadform [a, b, c]
    (if (not= a 0.0)
        (let [arg (- (Math/pow b 2.0) (* 4.0 (* a c)))]
            (if (>= arg 0.0)
                (do
                    (let 
                        [root1 (/ (+(- b) (Math/sqrt arg)) (* 2.0 a))
                         root2 (/ (-(- b) (Math/sqrt arg)) (* 2.0 a))]
                        (vector root1 root2)))  
            (do
                (printf (str "\nb^2 - 4ac is negative!")) 
                false)
            )   
        )
    (do 
        (printf (str "\na is zero!")) 
        false))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; main function
;;; Input: the coefficients a, b, and c
;;; Output: the roots of the quadratic equation.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (print "To compute the roots of a quadratic formula in the form y = ax^2 + bx + c,\n enter a, b, and c: ") (flush)
  (let
    [ a (double(read)) 
      b (double(read))
      c (double(read))
    ]

    (let 
        [result (quadform a b c)
         root1 (get result 0)
         root2 (get result 1)
        ]
        (if (not= result false) 
            (printf "\nThe roots are %f and %f\n"
                root1 root2)
        (printf "\nUnable to compute roots\n")
        )
    )
    )
)


