/****

A C program that finds the 32-bit representation of a integer or a float.
For integers we simply convert to a 32-bit binary.
For floats we use a pointer and casting to trick the compiler into treating the float as an usigned integer.

****/

/**
Group Members:

Antonio Mendoza
Anthony Santos
Juan Leon
Randy Quiloan

**/

#include<stdio.h>

void bitInteger(int i);
void bitFloat(unsigned int f);

int main() {

	// The code runs a while loop that checks if the user wants to find the 32-bit rep of an integer or a float.
	char c = 'i';
	while (c == 'i' || c == 'f' || c == 'I' || c == 'F')
	{
		// Prompt the user for a choice and assign it.
		printf("\nEnter f for float or i for int (Press anything else to quit):");
		scanf("%c", &c);

		// blank is used to settle a glitch in user input.
		char blank;
		if (c == 'i' || c == 'I')
		{
			// Prompt and assign the user's value to integer i.
			int i;
			printf("\nPlease enter an integer value: ");
			scanf("%d", &i);

			// Convert integer i to 32-bit representation and print it out.
			bitInteger(i);

			// Set blank to settle the glitch.
			scanf("%c", &blank);
		}
		else if (c == 'f' || c == 'F')
		{
			// Prompt and assign the user's value to float f.
			float f;
			printf("\nPlease enter an floating point value: ");
			scanf("%f", &f);

			// Convert float f to 32-bit representation and print it out.
			// To do this we use pointer p and by casting we treat f as an unsigned integer.
			int * p = (unsigned int *)(&f);
			bitFloat(*p);

			// Set blank to settle the glitch.
			scanf("%c", &blank);
		}
	}

	return 0;
} // end main()


void bitInteger(int i)
{
	int n; // For the loop
	for (n = 31; n >= 0; n--)
	{ // Begin the loop
		int mask = (1 << n); // bitshift
		// Determine whether or not to print a 1 or a 0.
		if ((i & mask) > 0)
			printf("1");
		else
			printf("0");
	} // end the loop
}
void bitFloat(unsigned int f) {
	// For the loop
	int n;
	for (n = 31; n >= 0; n--) 
	{ // Begin the loop
		int mask = (1 << n); // bitshift
		// Determine whether or not to print a 1 or a 0.
		if ((f & mask) > 0)
			printf("1");
		else
			printf("0");
		// Print signs to help with reading the binary representaiton for floats
		if (n == 22)
			printf(".");
		else if (n == 31 || n == 23)
			printf("-");
	} // end the loop
}