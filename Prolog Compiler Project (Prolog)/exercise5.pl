likes(john,mary).
likes(john,trains).
likes(peter,fast_cars).
likes(Person1,Person2):-
	hobby(Person1,Hobby),
	hobby(Person2,Hobby).
hobby(john,trainspotting).
hobby(tim,sailing).
hobby(helen,trainspotting).
hobby(simon,sailing).

/* ?- likes(john,trains). /* true */ */

/* ?- likes(helen,john). /* true */ */

/* ?- likes(tim,helen). /* false */ */

/* ?- likes(john,helen). /*true */ */