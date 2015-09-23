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



