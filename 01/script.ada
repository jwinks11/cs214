Script started on 2020-02-12 11:48:16-0500
]0;jw63@gold28: ~/214/projects/01[01;32mjw63@gold28[00m:[01;34m~/214/projects/01[00m$ cata  rectangle_area.adb
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
end rectangle_area;]0;jw63@gold28: ~/214/projects/01[01;32mjw63@gold28[00m:[01;34m~/214/projects/01[00m$ gnatmake rectangle_area
gnatmake: "rectangle_area" up to date.
]0;jw63@gold28: ~/214/projects/01[01;32mjw63@gold28[00m:[01;34m~/214/projects/01[00m$ gnatmake rectangle_area[1Pcat rectangle_area.adbgnatmake rectangle_area[5Pscript script.javajava RectangleArea[6@c RectangleArea.java[6P RectangleAreascript script.java[5@gnatmake rectangle_area[1Pcat rectangle_area.adbgnatmake rectangle_area[K./rectangle_area

To compute the area of a rectangle,
enter its length: 1

enter its width: 5

The rectangle's area is  5.00000E+00

The rectangle's area is 5.000000000000000

]0;jw63@gold28: ~/214/projects/01[01;32mjw63@gold28[00m:[01;34m~/214/projects/01[00m$ ./rectangle_area

To compute the area of a rectangle,
enter its length: 2

enter its width: 4

The rectangle's area is  8.00000E+00

The rectangle's area is 8.000000000000000

]0;jw63@gold28: ~/214/projects/01[01;32mjw63@gold28[00m:[01;34m~/214/projects/01[00m$ ./rectangle_area

To compute the area of a rectangle,
enter its length: 3.5

enter its width: 3.5

The rectangle's area is  1.22500E+01

The rectangle's area is 12.250000000000000

]0;jw63@gold28: ~/214/projects/01[01;32mjw63@gold28[00m:[01;34m~/214/projects/01[00m$ ./rectangle_area

To compute the area of a rectangle,
enter its length: 10

enter its width: 12

The rectangle's area is  1.20000E+02

The rectangle's area is 120.000000000000000

]0;jw63@gold28: ~/214/projects/01[01;32mjw63@gold28[00m:[01;34m~/214/projects/01[00m$ exit

Script done on 2020-02-12 11:49:50-0500
