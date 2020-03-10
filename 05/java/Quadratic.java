/* Quadratic.java computes the roots of a quadratic equation
 * Completed by: Jonathan Winkle
 * 3/10/20
 ***************************************************************/

import java.util.Scanner;
import java.lang.Math;

// java class Quadratic
public class Quadratic
{
  // main program
  public static void main(String[] args)
    {
      Scanner keyboard = new Scanner(System.in);
      // prompt for the string
      System.out.println("\nTo compute the roots of a quadratic formula in the form y = ax^2 + bx + c, enter a, b, and c: ");
      double a = keyboard.nextDouble();
      double b = keyboard.nextDouble();
      double c = keyboard.nextDouble();
      
      //Create list, compute results and print
      double [] resultList = new double[2];
      
      if (quadraticRoots(a, b, c, resultList)) {
        System.out.println("\nThe first root is " + resultList[0] + "\n and the second root is " + resultList[1]);
      } else {
        System.out.println("\nUnable to find roots");
      }
    }
  
  /* quadraticRoots() computes the roots of a quadratic equation
   * Receive: 	a, b, c,
   *            results - an array of doubles in which to place roots
   * Return: true if roots are valid, false if not valid
   *****************************************************/
  public static boolean quadraticRoots(double a, double b, double c, double[] results)
  {
    if (a != 0) {
        double arg = Math.pow(b, 2.0) - (4 * a * c);
        if (arg >= 0) {
            results[0] = (-b + Math.sqrt(arg))/(2*a);
            results[1] = (-b - Math.sqrt(arg))/(2*a);
            return true;
        } else {
            System.out.println("\nb^2 - 4ac is negative!");
            return false;
        }
    } else {
        System.out.println("\na is zero!");
        return false;
    }
  } 


}