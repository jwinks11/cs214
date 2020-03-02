Script started on 2020-03-02 16:07:53-0500
]0;jw63@maroon12: ~/214/projects/04/ada[01;32mjw63@maroon12[00m:[01;34m~/214/projects/04/ada[00m$ cat factorial.adb
-- factorial.adb computes a value's factorial.
--
-- Input: n, a real number.
-- Output: the value of n!
--
-- Author: Jonathan Winkle
-- 3/2/20
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO; 
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure factorial is

    fact, n : Integer;

begin                                           -- Prompt for input
    Put_Line("To calculate the factorial of a number");
    Put(" enter the number: ");
    Get(n);

    fact := n;
    for i in reverse 2..n
    loop
        fact := (fact * (i-1));
    end loop;
    Put("The factorial of ");
    Put(n, Width => 1);
    Put(" is ");
    Put(fact, Width => 1);

end factorial;]0;jw63@maroon12: ~/214/projects/04/ada[01;32mjw63@maroon12[00m:[01;34m~/214/projects/04/ada[00m$ cat factorial.adb[3Pjava Factorialc Factorial.javagnatmake factorial.adb
x86_64-linux-gnu-gcc-7 -c factorial.adb
x86_64-linux-gnu-gnatbind-7 -x factorial.ali
x86_64-linux-gnu-gnatlink-7 factorial.ali
]0;jw63@maroon12: ~/214/projects/04/ada[01;32mjw63@maroon12[00m:[01;34m~/214/projects/04/ada[00m$ gnatmake factorial.adb[5Pcat factorial.adb[3Pjava Factorialc Factorial.javagnatmake factorial.adb[5Pmv script.java ..script script.java[4Pjava Factorialscript script.java[1Pmv script.java ..gnatmake factorial.adb[2Pjavac Factorial.java[6P Factorialcat factorial.adb[5@gnatmake factorial.adb[K./  factorial
To calculate the factorial of a number
 enter the number: 1
The factorial of 1 is 1
]0;jw63@maroon12: ~/214/projects/04/ada[01;32mjw63@maroon12[00m:[01;34m~/214/projects/04/ada[00m$ ./factorial
To calculate the factorial of a number
 enter the number: 2
The factorial of 2 is 2
]0;jw63@maroon12: ~/214/projects/04/ada[01;32mjw63@maroon12[00m:[01;34m~/214/projects/04/ada[00m$ ./factorial
To calculate the factorial of a number
 enter the number: 3
The factorial of 3 is 6
]0;jw63@maroon12: ~/214/projects/04/ada[01;32mjw63@maroon12[00m:[01;34m~/214/projects/04/ada[00m$ ./factorial
To calculate the factorial of a number
 enter the number: 4
The factorial of 4 is 24
]0;jw63@maroon12: ~/214/projects/04/ada[01;32mjw63@maroon12[00m:[01;34m~/214/projects/04/ada[00m$ ./factorial5 
To calculate the factorial of a number
 enter the number: 5
The factorial of 5 is 120
]0;jw63@maroon12: ~/214/projects/04/ada[01;32mjw63@maroon12[00m:[01;34m~/214/projects/04/ada[00m$ ./factorial
To calculate the factorial of a number
 enter the number: 6
The factorial of 6 is 720
]0;jw63@maroon12: ~/214/projects/04/ada[01;32mjw63@maroon12[00m:[01;34m~/214/projects/04/ada[00m$ exit

Script done on 2020-03-02 16:09:06-0500
