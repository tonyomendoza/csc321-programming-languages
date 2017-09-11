taller(X, Y):-
	height(X, Y).
taller(X, Y):-
	height(X, Z),
	taller(Z, Y).
height(bob, mike).
height(mike, jim).
height(jim, george).