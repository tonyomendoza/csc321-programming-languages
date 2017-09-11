/****

A Java Program that finds the 32-bit representation of an integer and a float.

****/

/**
Group Members:

Antonio Mendoza
Anthony Santos
Juan Leon
Randy Quiloan

**/

import java.util.Scanner;
public class Project03
{
	public static void main (String[] args)
	{
		Scanner keyboard = new Scanner(System.in);
		int num = 0;//use same int variable regardless of float or int value
		String f = "f";//use String object to compare with user selection of int
		String i = "i";//use String object to compare with user selection of float
		System.out.println("Conversion of a float or integer to its binary representation");
		System.out.print("Enter f for float or i for integer:");
		String selection = keyboard.next();
		if (selection.equals(i))
		{
			System.out.print("Please enter a number for conversion:");
			num = keyboard.nextInt();
		}
		else if (selection.equals(f))
		{
			System.out.print("Please enter a number for conversion:");
			float n = keyboard.nextFloat();
			num = (Float.floatToIntBits(n));//invoke static method to obtain the bits that represent the floating-point number
		}//https://docs.oracle.com/javase/7/docs/api/java/lang/Float.html#floatToIntBits(float)
                
		for (int j = 31; j >= 0; j--)// Begin the loop
		{
			int mask = (num>>j);  // shift number
			
				if((mask & 1) == 1 )       // bitwise 
				{
					System.out.print("1");
				}
				else
				{
					System.out.print("0");
				}
		}
	}
}