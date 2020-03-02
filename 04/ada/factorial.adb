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

end factorial;