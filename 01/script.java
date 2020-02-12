Script started on 2020-02-12 11:20:21-0500
]0;jw63@gold28: ~/214/projects/01[01;32mjw63@gold28[00m:[01;34m~/214/projects/01[00m$ cat RectangleArea.java
/* RectangleArea.java computes the area of a circle.
 *
 * Input: The length and width of the rectangle.
 * Precondition: Length and width are positive numbers.
 * Output: The area of the circle.
 *
 * Begun by: Dr. Adams, for CS 214, at Calvin College.
 * Completed by: Jonathan Winkle
 * Date: 2/12/2020
 **********************************************************/


import java.util.Scanner;  // include class for Scanner

public class RectangleArea {

     /* function rectangleArea() computes a rectangle's area, given its side lengths.
      * Parameter: l, w, doubles.
      * Precondition: l and w are not negative.
      * Returns: the area of the rectangle
      */
     public static double rectangleArea(double l, double w) {
        return l*w;               // return an expression
     } // rectangleArea method
	
  // main program
  public static void main(String[] args) {
      // prompt for length
      System.out.println("\n\nTo compute the area of a rectangle,");
      System.out.print(" enter its length: ");

      // Create a connection named keyboard to standard in
      Scanner keyboard = new Scanner(System.in);

      //Get the number from the user
      double l = keyboard.nextDouble();

      // prompt for width
      System.out.print("\n enter its width: ");
      double w = keyboard.nextDouble();

      // output area
      System.out.println("\nThe area is " + rectangleArea(l, w) + "\n");
      System.out.printf("The area is %f\n\n", rectangleArea(l, w));
      System.out.printf("The area is %.15f\n\n", rectangleArea(l, w));
  } // main method

} // class CircleArea]0;jw63@gold28: ~/214/projects/01[01;32mjw63@gold28[00m:[01;34m~/214/projects/01[00m$ javac -deprecation RectangleArea.java
]0;jw63@gold28: ~/214/projects/01[01;32mjw63@gold28[00m:[01;34m~/214/projects/01[00m$ java Rectangle Area     Area


To compute the area of a rectangle,
 enter its length: 1

 enter its width: 5

The area is 5.0

The area is 5.000000

The area is 5.000000000000000

]0;jw63@gold28: ~/214/projects/01[01;32mjw63@gold28[00m:[01;34m~/214/projects/01[00m$ java RectangleArea


To compute the area of a rectangle,
 enter its length: 2

 enter its width: 4

The area is 8.0

The area is 8.000000

The area is 8.000000000000000

]0;jw63@gold28: ~/214/projects/01[01;32mjw63@gold28[00m:[01;34m~/214/projects/01[00m$ java RectangleArea


To compute the area of a rectangle,
 enter its length: 3.5

 enter its width: 3.5

The area is 12.25

The area is 12.250000

The area is 12.250000000000000

]0;jw63@gold28: ~/214/projects/01[01;32mjw63@gold28[00m:[01;34m~/214/projects/01[00m$ java RectangleArea


To compute the area of a rectangle,
 enter its length: 10

 enter its width: 12

The area is 120.0

The area is 120.000000

The area is 120.000000000000000

]0;jw63@gold28: ~/214/projects/01[01;32mjw63@gold28[00m:[01;34m~/214/projects/01[00m$ exit

Script done on 2020-02-12 11:21:46-0500
