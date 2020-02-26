#! /usr/bin/ruby
# letter_grades.rb translates a percentage into a letter grade
# Jonathan Winkle
# CS 214
# February, 2020
################################################################

# Input:  an integer, the percentage grade
# Precondition: The percentage grade is an integer
# Output: The corresponding letter grade for the given percentage

def letterGrade(percentage)
    percentageGrade = percentage/10

    case percentageGrade
    when 9..10
       'A'
    when 8
       'B'
    when 7
       'C'
    when 6
       'D'
    else
       'F'
    end
 
 end
 
 if __FILE__ == $0
    print "Enter the percentage (0-100): "
    percentage = gets.to_i
    print "Letter grade is: "
    puts letterGrade(percentage)
 end 