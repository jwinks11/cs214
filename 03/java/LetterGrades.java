/* LetterGrades.java is a driver for function letterGrade().
 *
 * CS 214
 * Jonathan Winkle
 * February 2020
 ****************************************************************/
import java.util.Scanner;

public class LetterGrades {

   public static void main(String[] args) {
      Scanner keyboard = new Scanner(System.in);
      System.out.println("\nEnter your percentage grade (0-100): "); // prompt

      int grade = (keyboard.nextInt());      // read year
      System.out.println(letterGrade(grade)); // display its code
   }

   /***************************************************************
    * yearCode() converts an academic year into its integer code.
    *
    * Receive: year, a string.
    * PRE: year is one of {freshman, sophomore, junior, or senior}.
    * Return: the integer code corresponding to year.
    */

    public static String letterGrade(int grade)
    {
        switch (grade / 10)
        {
            case 10: case 9:
              return "A";
            case 8:
              return "B";
            case 7:
              return "C";
            case 6:
              return "D";
            default:
              return "F";
        }
    }

}