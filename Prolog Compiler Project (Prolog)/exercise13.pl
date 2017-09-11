replace_all([], X, Y, []).
replace_all([H|List], X, Y, [H|Result]):-
	X \= H,
	replace_all(List, X, Y, Result).
replace_all([ThrowAway|List], X, Y, [Y|Result]):-
	replace_all(List, X, Y, Result).