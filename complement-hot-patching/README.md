# complement / hot patching

stuff based on :
 - logtalk delegates example - https://github.com/LogtalkDotOrg/logtalk3/tree/master/examples/delegates
 - http://rosettacode.org/wiki/Singleton#Logtalk

load the example dependencies (without category adams) :
	
	?- logtalk_load(loader).
	% [ /home/damien/wkp/github/logtalk-experiments/complement-hot-patching/familytree.lgt loaded ]
	% [ /home/damien/wkp/github/logtalk-experiments/complement-hot-patching/family.lgt loaded ]
	% [ /home/damien/wkp/github/logtalk-experiments/complement-hot-patching/simpson.lgt loaded ]
	% [ /home/damien/wkp/github/logtalk-experiments/complement-hot-patching/loader.lgt loaded ]
	true.

familytree is "hot patched"  :

	?- familytree::mother(Mother, Child).
	Mother = marge,
	Child = bart ;
	Mother = marge,
	Child = lisa ;
	Mother = marge,
	Child = maggie ;
	false.

load adams complement :

	?- logtalk_load(adams).
	% [ /home/damien/wkp/github/logtalk-experiments/complement-hot-patching/adams.lgt loaded ]
	true.

predicates not redefined :

	?- familytree::mother(Mother, Child).
	Mother = marge,
	Child = bart ;
	Mother = marge,
	Child = lisa ;
	Mother = marge,
	Child = maggie ;
	false.
