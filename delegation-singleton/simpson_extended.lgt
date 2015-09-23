
%  
:- object(simpson_extended, extends(simpson)).

	male(Male) :-
		^^male(Male).
	male(abraham).

	female(Fem) :-
		^^female(Fem).
	female(mona).

	parent(Parent,Child) :-
		^^parent(Parent,Child).
	parent(abraham, homer).
	parent(mona, homer).

:- end_object.