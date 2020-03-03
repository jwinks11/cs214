Script started on 2020-03-03 15:11:09-0500
]0;jw63@gold22: ~/214/projects/04/ruby[01;32mjw63@gold22[00m:[01;34m~/214/projects/04/ruby[00m$ cat rf  factorial.rb
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
 
 ]0;jw63@gold22: ~/214/projects/04/ruby[01;32mjw63@gold22[00m:[01;34m~/214/projects/04/ruby[00m$ cat factorial.rb[1@ruby factorial.rb
Enter a value to calculate its factorial: 2
The factorial of 2 is 2
]0;jw63@gold22: ~/214/projects/04/ruby[01;32mjw63@gold22[00m:[01;34m~/214/projects/04/ruby[00m$ ruby factorial.rb
Enter a value to calculate its factorial: 3
The factorial of 3 is 6
]0;jw63@gold22: ~/214/projects/04/ruby[01;32mjw63@gold22[00m:[01;34m~/214/projects/04/ruby[00m$ ruby factorial.rb
Enter a value to calculate its factorial: 4
The factorial of 4 is 24
]0;jw63@gold22: ~/214/projects/04/ruby[01;32mjw63@gold22[00m:[01;34m~/214/projects/04/ruby[00m$ ruby factorial.rb
Enter a value to calculate its factorial: 5
The factorial of 5 is 120
]0;jw63@gold22: ~/214/projects/04/ruby[01;32mjw63@gold22[00m:[01;34m~/214/projects/04/ruby[00m$ ruby factorial.rb
Enter a value to calculate its factorial: 6
The factorial of 6 is 720
]0;jw63@gold22: ~/214/projects/04/ruby[01;32mjw63@gold22[00m:[01;34m~/214/projects/04/ruby[00m$ exit

Script done on 2020-03-03 15:11:39-0500
