connected(town1, town2).
connected(town2, town3).
connected(town3, town4).
connected(town4, town5).
connected(town5, town6).
can_get(X, Y):-
	connected(X,Y).
can_get(X, Y):-
	connected(X, Z),
	can_get(Z, Y).