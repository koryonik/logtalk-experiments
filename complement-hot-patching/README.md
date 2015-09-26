# Hot patching solution

Alternative to the delegation-based solution using complementing categories.
Requires the latest git version of Logtalk.

## Load the example dependencies (but only the Simpsons family database):

	?- {loader}.
	% [ /home/damien/wkp/github/logtalk-experiments/complement-hot-patching/familytree.lgt loaded ]
	% [ /home/damien/wkp/github/logtalk-experiments/complement-hot-patching/family.lgt loaded ]
	% [ /home/damien/wkp/github/logtalk-experiments/complement-hot-patching/simpson.lgt loaded ]
	% [ /home/damien/wkp/github/logtalk-experiments/complement-hot-patching/loader.lgt loaded ]
	true.

## The `familytree` object is "hot patched" by the `simpsons` category:

	?- familytree::father(F, C).
	F = homer,
	C = bart ;
	F = homer,
	C = lisa ;
	F = homer,
	C = maggie ;
	false.

## Load the `simpsons_extended` category and run the query again:

	?- {simpsons_extended}.
	% [ /home/damien/wkp/github/logtalk-experiments/complement-hot-patching/simpsons_extended.lgt loaded ]
	% (0 warnings)
	true.

	?- familytree::father(F, C).
	F = homer,
	C = bart ;
	F = homer,
	C = lisa ;
	F = homer,
	C = maggie ;
	F = abe,
	C = homer ;
	F = abe,
	C = herb ;
	false.

## Switch to the Addams family and try the same query again:

	?- {addams}.
	% [ /Users/pmoura/Documents/Logtalk/logtalk3/examples/family/alt/addams.lgt loaded ]
	% (0 warnings)
	true.

	?- familytree::father(F, C).
	F = gomez,
	C = pubert ;
	F = gomez,
	C = pugsley ;
	F = gomez,
	C = wednesday ;
	false.
