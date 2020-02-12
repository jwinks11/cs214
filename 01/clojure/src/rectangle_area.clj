;;;; rectangle_area.clj calculates the area of a rectangle.
;;;;
;;;; Input: The length and width of a rectangle.
;;;; Output: The area of that rectangle.
;;;;
;;;; Usage: clojure -m rectangle_area
;;;;
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Jonathan Winkle
;;;; Date: 2/12/2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns rectangle_area) ; namespace function names the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function rectangleArea() computes the area of a rectangle.
;;; Receive: itsLength, itsWidth, two positive numbers.
;;; Precondition: itsLength and itsWidth >= 0.0.
;;; Return: the area of the corresponding rectangle.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn rectangleArea [itsLength itsWidth]
  (* itsLength itsWidth )  ; return l*w
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main is where execution begins
;;; Input: the length and width of a rectangle.
;;; Output: the area of that rectangle.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (println "\nTo compute the area of a rectangle,")
  (def width 5.0)
  (print   " enter its length: ") (flush)
  (let
    [ length (read) ]
    (assert (>= length 0) "-main: length must be positive")
    (assert (>= width 0) "-main: width must be positive")

    (printf "\nThe area is %f\n\n" (rectangleArea length width))

    (print "\nThe area is ")
    (print (rectangleArea length width))
    (print "\n\n")

    (printf "\nThe area is %.15f\n\n" (rectangleArea length width))
  )
)  