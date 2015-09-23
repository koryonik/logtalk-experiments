% concrete family simpson
:- object(simpson, extends(familytree)).

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

:- end_object.
