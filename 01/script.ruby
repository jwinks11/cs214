Script started on 2020-02-12 13:12:10-0500
]0;jw63@gold28: ~/214/projects/01[01;32mjw63@gold28[00m:[01;34m~/214/projects/01[00m$ cat rectangle_area.rb
#! /usr/bin/ruby
# rectangle_area.rb computes the area of a rectangle given its radius
# 
# Input: the length and width of a rectangle
# Precondition: the length and width are not negative
# Output: the area of the rectangle.
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Jonathan Winkle
# Date: 2/12/2020
###############################################################

# function rectangleArea returns a rectangle's area, given its length and width
# Parameters: l, w, two numbers
# Precondition: l and w > 0.
# Returns: the area of a rectangle whose length and width are l and w.

def rectangleArea(l, w) # defines rectangleArea function as taking parameters l and w
    l * w # calculates area of rectangle
end # ends definition of function 

if __FILE__ == $0 # finds the parent directory
   puts "To compute the area of a rectangle," # prints with a newline
   print " enter its length: " # prints with no newline
   length = gets.chomp.to_f # gets user input and removes line break
   print " enter its width: " # prints with no newline
   width = gets.chomp.to_f # gets user input and removes line break
   print "The rectangle's area is: " # prints with no newline
   puts rectangleArea(length, width) #prints area of rectangle with a newline
end # ends program]0;jw63@gold28: ~/214/projects/01[01;32mjw63@gold28[00m:[01;34m~/214/projects/01[00m$ ruby circle_area.rb
[1mTraceback[m (most recent call last):
ruby: [1mNo such file or directory -- circle_area.rb ([1;4mLoadError[m[1m)
[m]0;jw63@gold28: ~/214/projects/01[01;32mjw63@gold28[00m:[01;34m~/214/projects/01[00m$ ruby rectangle_area.rb
To compute the area of a rectangle,
 enter its length: 1
 enter its width: 5
The rectangle's area is: 5.0
]0;jw63@gold28: ~/214/projects/01[01;32mjw63@gold28[00m:[01;34m~/214/projects/01[00m$ ruby rectangle_area.rb
To compute the area of a rectangle,
 enter its length: 2
 enter its width: 4
The rectangle's area is: 8.0
]0;jw63@gold28: ~/214/projects/01[01;32mjw63@gold28[00m:[01;34m~/214/projects/01[00m$ ruby rectangle_area.rb
To compute the area of a rectangle,
 enter its length: 3.5 
 enter its width: 3.5
The rectangle's area is: 12.25
]0;jw63@gold28: ~/214/projects/01[01;32mjw63@gold28[00m:[01;34m~/214/projects/01[00m$ ruby rectangle_area.rb
To compute the area of a rectangle,
 enter its length: 10
 enter its width: 12
The rectangle's area is: 120.0
]0;jw63@gold28: ~/214/projects/01[01;32mjw63@gold28[00m:[01;34m~/214/projects/01[00m$ exit

Script done on 2020-02-12 13:13:10-0500
