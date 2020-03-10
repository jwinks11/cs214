Script started on 2020-03-10 18:28:07-0400
]0;jw63@gold22: ~/214/projects/05/ruby[01;32mjw63@gold22[00m:[01;34m~/214/projects/05/ruby[00m$ cat quadratic.rb
# quadratic.rb computes the roots of a quadratic equation.
#
# Completed by: Jonathan Winkle
# Date: 3/10/20
#################################################################


# quadform() computes the roots of a quadratic equation.
# Receive: a, b, c, the coefficients, vec                 
# PRE: a >= 1, b^2 - 4ac >= 0
# Return: true if the roots are valid, false if not
######################################################

def quadform (a, b, c, vec)
    if a != 0 then 
        arg = b**2 - (4*a*c)
        if arg >= 0 then
            vec[0] = (-b + Math.sqrt(arg))/(2*a)
            vec[1] = (-b - Math.sqrt(arg))/(2*a)
            true
        else
            puts "b^2 - 4ac is negative!"
            false
        end
    else
        puts "a is zero!"
        false
    end
  end
  
  
  def main
    print "To compute the roots of a quadratic formula in the form y = ax^2 + bx + c, enter a, b, and c: "; 
    a = gets.to_f 
    b = gets.to_f
    c = gets.to_f
    results = Array.new(2)
    if quadform(a, b, c, results) then
        puts "The first root is: " << results[0].to_s
        puts "the second root is: " << results[1].to_s
    else
        puts "Unable to compute the roots"
    end
  end

  main]0;jw63@gold22: ~/214/projects/05/ruby[01;32mjw63@gold22[00m:[01;34m~/214/projects/05/ruby[00m$ cat quadratic.rblojure -m quadratic[9P./quadratic[9@clojure -m quadratic[4Pat quadratic.rb[Kf ruby quadratic.rb
To compute the roots of a quadratic formula in the form y = ax^2 + bx + c, enter a, b, and c: 0
1
2
a is zero!
Unable to compute the roots
]0;jw63@gold22: ~/214/projects/05/ruby[01;32mjw63@gold22[00m:[01;34m~/214/projects/05/ruby[00m$ ruby quadratic.rb
To compute the roots of a quadratic formula in the form y = ax^2 + bx + c, enter a, b, and c: 9
1
9
b^2 - 4ac is negative!
Unable to compute the roots
]0;jw63@gold22: ~/214/projects/05/ruby[01;32mjw63@gold22[00m:[01;34m~/214/projects/05/ruby[00m$ ruby quadratic.rb
To compute the roots of a quadratic formula in the form y = ax^2 + bx + c, enter a, b, and c: 1
-3
-10
The first root is: 5.0
the second root is: -2.0
]0;jw63@gold22: ~/214/projects/05/ruby[01;32mjw63@gold22[00m:[01;34m~/214/projects/05/ruby[00m$ ruby quadratic.rb
To compute the roots of a quadratic formula in the form y = ax^2 + bx + c, enter a, b, and c: 1
-18
45
The first root is: 15.0
the second root is: 3.0
]0;jw63@gold22: ~/214/projects/05/ruby[01;32mjw63@gold22[00m:[01;34m~/214/projects/05/ruby[00m$ exit

Script done on 2020-03-10 18:29:23-0400
