CSC 321

Programming Languages

Project 01

Do the following in groups of 2-4.

Look over the given Java code for a simple expression grammar

and figure out how it works.

It is a simple parser that parses and calcualtes the values for

a simple expression grammar (given below).

The grammar:

         statement = { expression  ";" } "."

         expression = term { ( "+" | "-" ) term }

         term      = factor { ( "*" | "/" ) factor }");"

         factor    = number | "(" expression ")")");"

Modify the code so the the it works with the following grammer

        statement = { expression  ";" } "."

        expression = term { ( "+" | "-" ) term }

        term      = factor { ( "*" | "/" ) factor }

        factor    = primary ^ primary | primary

        primary   = number | "(" expression ")"

The grammars are almost the same except for the addition of exponentiation.

Submit the source code for your project as a single zip file.

Include a plain text file with a full discription of the project

(include all team members names in this file).

Submit this zip file via toro email and send it to mmccullough@csudh.edu

set the subject line to "csc-321 project 01"

Due date for this project is March 11th Friday
