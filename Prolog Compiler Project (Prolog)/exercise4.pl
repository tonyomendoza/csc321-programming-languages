/* a :- b, c, d:- e f. /* Syntactically incorrect because of the space between e and f. */ */

/* happy(X):- a, b. /* Correct, as long as a and b are defined. */ */

/* happy(X):- hasmoney(X) & has_friends(X). /* Incorrect because of '&'. */ */

/* fun(fish):- blue(betty), bike(yamaha). /* Correct. */ */