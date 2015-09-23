% concrete family simpson
:- object(simpson, implements(family)).

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
