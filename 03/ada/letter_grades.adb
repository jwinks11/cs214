-- letter_grades.adb converts percentages to letter grades.
--
-- CS 214
-- Jonathan Winkle
-- February 2020
-- Input: grade, an int
-- Precondition: grade is between 0 and 100
-- Output: The letter grade appropriate for the percentage.
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure letter_grades is

   percentage : integer := 0;

  function letterGrade(percentage: integer) return character is
  grade : character;
  begin
    case percentage / 10 is
        when 9 | 10  =>
            grade := 'A';
        when 8  =>
            grade := 'B';
        when 7  =>
            grade := 'C';
        when 6  => 
            grade := 'D';
        when 0..5   =>
            grade := 'F';
        when others => Put("Error in input value for percentage");
    end case;
    return grade;
  end letterGrade;


begin                                          
   Put("Enter your grade percentage (1-100): ");    -- Prompt for input
   Get(percentage);                                      -- Input
   Put( letterGrade(percentage) );                       -- Convert and output
   New_Line;
end letter_grades;
