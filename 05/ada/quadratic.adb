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

