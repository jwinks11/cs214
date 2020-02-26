;;;; letter_grades.clj is a driver for function letterGrade.
;;;;
;;;; Input: An academic year, one of {freshman, sophomore,
;;;;                                  junior, senior}.
;;;; Output: The code for that academic year
;;;;         (1, 2, 3, 4 for valid entries; 
;;;;          0 for invalid entries).
;;;;
;;;; Usage: clojure -m year_codes
;;;;
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by:
;;;; Date:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns letter_grades)                    ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; letterGrade() returns the letter grade for a given percentage.
;;; Receive: percentage, an integer.
;;; Precondition: percentage is an integer.
;;; Return: the character letter grade corresponding to the percentage.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; solution using the cond function
(defn letterGrade [percentage]
  (cond
    (> percentage 89)   'A
    (> percentage 79)   'B
    (> percentage 69)   'C
    (> percentage 59)   'D
    :else               'F
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main() test-drives our letterGrade() function.
;;; Input: percentage, an integer.
;;; Output: the letter grade corresponding to the percentage.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
 (print "\nEnter your percentage (0-100): ") (flush)
 (let
    [ percentage (Integer/parseInt (read-line)) ]                ; read percentage (integer)
    (println "letter grade: " (letterGrade percentage) "\n")      ; display its code
 )
)

