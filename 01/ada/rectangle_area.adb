-- rectangle_area.adb computes the area of a rectangle.
--
-- Input: The length and width of the rectangle.
-- Precondition: The length and width are positive numbers.
-- Output: The area of the rectangle.
--
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Jonathan Winkle
-- Date: 2/6/2020
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure rectangle_area is

   length, width, area : float; 

   -- function rectangleArea computes a rectangle's area, given its length and width
   -- Parameter: l, w, floats
   -- Precondition: l and w >= 0.0
   -- Return: the area of the rectangle with length l and width w
   ----------------------------------------------------
   -- this line is defining the function rectangleArea as taking and returning a float
   function rectangleArea(l: in float; w: in float) return float is 
   -- return statement in enclosed by 'begin' and 'end' rather than {}   
   begin
   -- area of a rectangle is calculated and returned
      return l * w;
   end rectangleArea;

begin
-- make a new line                          
   New_Line;
-- print the line and a newline
   Put_Line("To compute the area of a rectangle,");
-- print the line without newline
   Put("enter its length: ");
-- reads user input as value of length
   Get(length);
-- make a new line
   New_Line;
-- print line without newline
   Put("enter its width: ");
-- reads user input as value of width
   Get(width);
-- defines area as the result of the rectangleArea function on the length and width
   area := rectangleArea(length, width);

-- indent a line
   New_Line;
-- print the line
   Put("The rectangle's area is ");
-- print the area variable
   Put(area);
-- two lines of whitespace
   New_Line; New_Line; 

-- print the line
   Put("The rectangle's area is ");
-- print the area to different degrees of specificity
   Put(area, 1, 15, 0);
-- print two lines of whitespace
   New_Line; New_Line; 
-- end of file
end rectangle_area;