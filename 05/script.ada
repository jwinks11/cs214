Script started on 2020-03-10 18:40:50-0400
]0;jw63@gold22: ~/214/projects/05/ada[01;32mjw63@gold22[00m:[01;34m~/214/projects/05/ada[00m$ cat quadratic.adb
-- quadratic.adb computes the roots of a quadratic equation.
--
-- Input: a, b, c, reals, the coefficients
-- Precondition: a >= 1 and b^2 - 4ac is >= 0
-- Output: The roots of the quadratic equation
--
-- Completed by: Jonathan Winkle
-- Date: 3/10/20
--------------------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO, Ada.Strings.Fixed, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Float_Text_IO, Ada.Strings.Fixed, Ada.Numerics.Elementary_Functions;

procedure quadratic is

   a, b, c, Root_One, Root_Two, arg : float;
   tf : boolean;

   ------------------------------------------------
   --  quadform() computes roots of a quadratic equation.           
   -- Receive: a, b, c, coefficients.        
   -- PRE: a >= 1 and b^2-4ac >= 0
   -- Passback:  Root_One and Root_Two, the roots of the equation
   ------------------------------------------------
   function quadform (a: in float; b: in float; c: in float; Root_One: out float; Root_Two: out float) return boolean is
   begin
    if a /= 0.0 then
        arg := b**2 - (4.0*a*c);
        if arg >= 0.0 then
            Root_One := (-b + Sqrt(arg))/(2.0*a);
            Root_Two := (-b - Sqrt(arg))/(2.0*a);
            return true;
        else
            Put("b^2 - 4ac is negative");
            return false;
        end if;
    else 
        Put("a is zero!");
        return false;
    end if; 
   end quadform; 


begin                                          
   Put("To compute the roots of a quadratic formula in the form y = ax^2 + bx + c, enter a, b, and c: ");
   Get(a);
   Get(b);
   Get(c);

   tf := quadform(a, b, c, Root_One, Root_Two);

   if tf then
    Put("The first root is ");
    Put(Root_One);
    Put(" and the second root is ");
    Put(Root_Two);
   else 
    New_Line;
    Put("Unable to find roots");
    end if;

end quadratic;

]0;jw63@gold22: ~/214/projects/05/ada[01;32mjw63@gold22[00m:[01;34m~/214/projects/05/ada[00m$ cat quadratic.adbmv script.java ..script script.java[4Pjava Quadraticc Quadratic.java[2Pcat Quadratic.javamv script.clojure ..script script.clojure[1Pclojure -m quadraticat src/quadratic.clj[1Plojure -m quadraticscript script.clojure[1Pclojure -m quadraticat src/quadratic.clj[4Pmv script.ruby ..script script.ruby[1Pruby quadratic.rb[1Pcat quadratic.rblojure -m quadratic[9P./quadraticgnatmake quadratic.adb[11P./quadraticgnatmake quadratic.adb
x86_64-linux-gnu-gcc-7 -c quadratic.adb
x86_64-linux-gnu-gnatbind-7 -x quadratic.ali
x86_64-linux-gnu-gnatlink-7 quadratic.ali
]0;jw63@gold22: ~/214/projects/05/ada[01;32mjw63@gold22[00m:[01;34m~/214/projects/05/ada[00m$ gnatmake quadratic.adb[5Pcat quadratic.adbmv script.java ..script script.java[4Pjava Quadraticc Quadratic.java[2Pcat Quadratic.javamv script.clojure ..script script.clojure[1Pclojure -m quadraticat src/quadratic.clj[1Plojure -m quadraticscript script.clojure[1Pclojure -m quadraticat src/quadratic.clj[4Pmv script.ruby ..script script.ruby[1Pruby quadratic.rb[1Pcat quadratic.rblojure -m quadratic[9P./quadraticgnatmake quadratic.adb[11P./quadratic
To compute the roots of a quadratic formula in the form y = ax^2 + bx + c, enter a, b, and c: 0
1
2
a is zero!
Unable to find roots
]0;jw63@gold22: ~/214/projects/05/ada[01;32mjw63@gold22[00m:[01;34m~/214/projects/05/ada[00m$ ./quadratic
To compute the roots of a quadratic formula in the form y = ax^2 + bx + c, enter a, b, and c: 9
1
9
b^2 - 4ac is negative
Unable to find roots
]0;jw63@gold22: ~/214/projects/05/ada[01;32mjw63@gold22[00m:[01;34m~/214/projects/05/ada[00m$ ./quadratic
To compute the roots of a quadratic formula in the form y = ax^2 + bx + c, enter a, b, and c: 1
-3
-10
The first root is  5.00000E+00 and the second root is -2.00000E+00
]0;jw63@gold22: ~/214/projects/05/ada[01;32mjw63@gold22[00m:[01;34m~/214/projects/05/ada[00m$ ./quadratic
To compute the roots of a quadratic formula in the form y = ax^2 + bx + c, enter a, b, and c: 1
-18
45
The first root is  1.50000E+01 and the second root is  3.00000E+00
]0;jw63@gold22: ~/214/projects/05/ada[01;32mjw63@gold22[00m:[01;34m~/214/projects/05/ada[00m$ exit

Script done on 2020-03-10 18:42:18-0400
