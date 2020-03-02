/* Factorial.java displays a table of logarithms.
 *
 * Input: n, a real number
 * Output: the value of n!
 * Author: Jonathan Winkle
 * March 2, 2020
 ********************************************************/
import java.util.Scanner; 		// Get input

class Factorial{

    public static void main(String[] args){
        Scanner keyboard = new Scanner(System.in);
        System.out.println("To compute n!, enter n: ");
        double n;
        n = keyboard.nextDouble();
        double result = factorial(n);
        System.out.println("The factorial of "+ n +" is "+ result);

    }
   /***************************************************************
    * factorial() calculates the factorial of its operand.
    *
    * Receive: n, a real number
    * Return: the value of n factorial.
    */

    public static double factorial(double n)
    {
        double fact = n;
        for (double i=n; i>1; i--){
            fact *= i-1;
        }
        return fact;
    }
  }