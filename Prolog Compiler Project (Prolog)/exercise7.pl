a(X):-
	b(X), c(X), d(X).
a(X):-
	c(X), d(X).
a(X):-
	d(X).
b(1).
b(a).
b(2).
b(3).
d(10).
d(11).
c(3).
c(4).

/* d(10) first then d(11). */