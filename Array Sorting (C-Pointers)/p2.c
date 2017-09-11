/****

  A simple C program that creates an array of integers 
  sorts the array (in ascending order) with a function 
  and then prints the array out to standard out 
  The sorting function must be called sortAsc
  It must take two parameters, first being a pointer 
  to ints (the array) the second and int for the size
  of the array   The function also must return a pointer

****/

/**
Group Members:

Antonio Mendoza
Anthony Santos
Juan Leon
Randy Quiloan

**/



#include<stdio.h>

   
   // declare function so compiler knows what it looks like 
   int *sortAsc(int *p, int size);      

   int main() {
      // create an array of ints
      int arr[]={321,123,331,218,251,121,111,115,116,451};
      int *p;    		// p is pointer to int
      int i;			// index for the for loops
     
      p = arr;			// set p to point to the array   

      // print out array - before sort 
      printf("Unsorted array:\n");
      for(i=0;i<10;i++)
         printf("%d\n",*(p+i));

      // call function sortAsc - well sort array into ascending order
      p = sortAsc(arr,10);

      //output the sorted array
      printf("Sorted array:\n");
      for(i=0;i<10;i++)
         printf("%d\n",*(p+i));

      return 0;
    }

   
    int * sortAsc(int *p, int n){
    /****
    A C function to sort an array of ten integer values in ascending 
    order.  This function accepst two arguments-- first, a pointer that 
    points to the array and, the second argument, the array size. The 
    function will returns a pointer that points to the sorted array.
    ****/
		// variable declarations for indexing purposes.
		int j, i;
		// for loop: once to go down the list, twice to compare each variable with the first indexed variable.
		for (j = 0; j < n; j++)
			for (i = j + 1; i < n; i++)
				if (p[j] > p[i]) { // if the first value is greater than the second value
					// declare a temporary integer.
					int t;
					// assigns the first value in the array to the temporary value.
					t = p[j];
					// assigns the second value to the first variable.
					p[j] = p[i];
					// assigns the temporary value to the second variable.
					p[i] = t;
				} // end if
			
		// return the sorted integer array
		return p;
    } // end Sort(...) function