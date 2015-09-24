# delegation / singletion used patterns

stuff based on :
 - logtalk delegates example - https://github.com/LogtalkDotOrg/logtalk3/tree/master/examples/delegates
 - http://rosettacode.org/wiki/Singleton#Logtalk

load the example dependencies:

	?- logtalk_load(loader).


Use familytree object depended to family object :

	?- familytree::mother(Mother, Child).
	false.

	?- familytree::set_family(simpson).
	true.

	?- familytree::family(F).
	F = simpson.

	?- familytree::mother(Mother, Child).
	Mother = marge,
	Child = bart ;
	Mother = marge,
	Child = lisa ;
	Mother = marge,
	Child = maggie ;
	false.

	?- familytree::set_family(simpson_extended).
	true.

	?- familytree::mother(Mother, Child).
	Mother = marge,
	Child = bart ;
	Mother = marge,
	Child = lisa ;
	Mother = marge,
	Child = maggie ;
	Mother = mona,
	Child = homer.

	?- familytree::male(M).
	M = homer ;
	M = bart ;
	M = abraham.

familytree is not singleton :

    ?- create_object(subfamilytree, [extends(familytree)], [], []).
    true.

    ?- subfamilytree::family(M).
    M = simpson_extended.

    ?- familytree::family(F),  subfamilytree::family(S).
    false.

    ?- familytree::set_family(simpson).
    true.

    ?- familytree::family(F),  subfamilytree::family(S).
    F = S, S = simpson.

    ?- subfamilytree::set_family(simpson_extended).
    true.

    ?- familytree::family(F),  subfamilytree::family(S).
    F = simpson,
    S = simpson_extended.

Try second familytree implemenation (familytreev2) :

    ?- familytreev2::female(M).
    false.

    ?- familytreev2::set_family(simpson_extended).
    true.

    ?- familytreev2::female(M).
    M = marge ;
    M = lisa ;
    M = maggie ;
    M = mona.

    ?- familytreev2::set_family(not_implement_family_protocol).
    false.

    ?- familytreev2::family(S).
    S = simpson_extended.

familytreev2 is singleton :

    ?- familytreev2::set_family(simpson_extended).
    true.

    ?- create_object(subfamilytreev2, [extends(familytreev2)], [], []).
    true.

    ?-  familytreev2::family(F),  subfamilytreev2::family(S).
    F = S, S = simpson_extended.

    ?- familytreev2::set_family(simpson).
    true.

    ?- familytreev2::family(F),  subfamilytreev2::family(S).
    F = S, S = simpson.

    ?- subfamilytreev2::set_family(simpson_extended).
    true.

    ?- familytreev2::family(F),  subfamilytreev2::family(S).
    F = S, S = simpson_extended.
