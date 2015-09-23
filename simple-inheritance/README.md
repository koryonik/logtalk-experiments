complete example now implemented in logtalk repos : 
https://github.com/LogtalkDotOrg/logtalk3/commit/30ef34f25d02b0dd5daa32d5664878b65f6ef72c

load the example dependencies:
	
	?- logtalk_load(loader).


play with queries :

	?- familytree::mother(Mother, Child).

	false.

Or :

	?- simpson::father(Father, Child).

	Father = homer,
	Child = bart ;
	Father = homer,
	Child = lisa ;
	Father = homer,
	Child = maggie ;
	false.

Or :

	?- simpson_extended::ancestor(Somebody, Child).

	Somebody = homer,
	Child = bart ;
	Somebody = marge,
	Child = bart ;
	...
	Somebody = abraham,
	Child = homer ;
	Somebody = mona,
	Child = homer ;
	Somebody = abraham,
	Child = bart ;
	Somebody = abraham,
	Child = lisa ;
	Somebody = abraham,
	Child = maggie ;
    ...