#! /usr/bin/ruby
# factorial.rb calculates the factorial value of integers
#
# Author: Jonathan Winkle
# 3/3/2020
#
# Input:  an integer n
# Output: the value of n!


if __FILE__ == $0
    print "Enter a value to calculate its factorial: "
    n = gets.chomp.to_i
    count = n
    mult = n-1

    for i in 1...count
        n *= mult
        mult -= 1
    end

    puts "The factorial of #{count} is #{n}"
 end
 
 