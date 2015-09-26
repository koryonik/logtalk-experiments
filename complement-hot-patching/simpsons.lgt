
:- category(simpsons,
	implements(familyp),
	complements(familytree)).

	male(homer).
	male(bart).

	female(marge).
	female(lisa).
	female(maggie).

	parent(homer, bart).
	parent(homer, lisa).
	parent(homer, maggie).
	parent(marge, bart).
	parent(marge, lisa).
	parent(marge, maggie).

:- end_category.
