Script started on 2020-03-02 15:23:47-0500
]0;jw63@maroon12: ~/214/projects/04/java[01;32mjw63@maroon12[00m:[01;34m~/214/projects/04/java[00m$ cat java    Factorial.java
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
  }]0;jw63@maroon12: ~/214/projects/04/java[01;32mjw63@maroon12[00m:[01;34m~/214/projects/04/java[00m$ cat Factorial.java[4Pjava Factorialc Factorial.java
]0;jw63@maroon12: ~/214/projects/04/java[01;32mjw63@maroon12[00m:[01;34m~/214/projects/04/java[00m$ javac Factorial.java[2Pcat Factorial.java[2@javac Factorial.java[2Pcat Factorial.java[4Pjava Factorial
To compute n!, enter n: 
1
The factorial of 1.0 is 1.0
]0;jw63@maroon12: ~/214/projects/04/java[01;32mjw63@maroon12[00m:[01;34m~/214/projects/04/java[00m$ java Factorial
To compute n!, enter n: 
2
The factorial of 2.0 is 2.0
]0;jw63@maroon12: ~/214/projects/04/java[01;32mjw63@maroon12[00m:[01;34m~/214/projects/04/java[00m$ java Factorial
To compute n!, enter n: 
3
The factorial of 3.0 is 6.0
]0;jw63@maroon12: ~/214/projects/04/java[01;32mjw63@maroon12[00m:[01;34m~/214/projects/04/java[00m$ java Factorial
To compute n!, enter n: 
4
The factorial of 4.0 is 24.0
]0;jw63@maroon12: ~/214/projects/04/java[01;32mjw63@maroon12[00m:[01;34m~/214/projects/04/java[00m$ java Factorial
To compute n!, enter n: 
5
The factorial of 5.0 is 120.0
]0;jw63@maroon12: ~/214/projects/04/java[01;32mjw63@maroon12[00m:[01;34m~/214/projects/04/java[00m$ java Factorial
To compute n!, enter n: 
6
The factorial of 6.0 is 720.0
]0;jw63@maroon12: ~/214/projects/04/java[01;32mjw63@maroon12[00m:[01;34m~/214/projects/04/java[00m$ exit

Script done on 2020-03-02 15:24:28-0500
