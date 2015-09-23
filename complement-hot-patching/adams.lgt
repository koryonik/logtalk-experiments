
%  
:- category(adams, implements(family), complements(familytree)).

	male(gomez).
	male(pubert).
	male(pugsley).

	female(morticia).
	female(wednesday).

	parent(gomez, pubert).
	parent(gomez, pugsley).
	parent(gomez, wednesday).
	parent(morticia, pubert).
	parent(morticia, pugsley).
	parent(morticia, wednesday).
	
:- end_category.