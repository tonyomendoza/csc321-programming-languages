delete_all([], X, []).
delete_all([H|List], X, [H|Result]):-
	X \= H,
	delete_all(List, X, Result).
delete_all([ThrowAway|List], X, Result):-
	delete_all(List, X, Result).