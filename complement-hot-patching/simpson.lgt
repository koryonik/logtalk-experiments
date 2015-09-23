% define a complementing category, adding new predicates
:- category(simpson, implements(family), complements(familytree)).

	male(homer).
	male(bart).

	female(marge).
	female(lisa).
	female(maggie).

	parent(homer, bart).
	parent(marge, bart).
	parent(homer, lisa).
	parent(marge, lisa).
	parent(homer, maggie).
	parent(marge, maggie).

:- end_category.
