% load the SWI-Prolog "statistics" library
:- use_module(library(statistics)).

:- object(bench).

	:- public(bench/0).
	bench :-
		write('Plain Prolog goal (number of inferences):'), nl,
		prolog_statistics:time({plain_prolog_simple}).
	bench :-
		write('Logtalk goal (number of inferences):'), nl,
		prolog_statistics:time(logtalk_obj::simple).
	bench :-
		nl, write('bench plain_prolog_simple ...'),
		benchmark::benchmark({plain_prolog_simple}),
		nl, write('bench logtalk_obj::simple ...'),
		benchmark::benchmark(logtalk_obj::simple),
		nl, write('Plain Prolog DCG call (number of inferences):'),
		prolog_statistics:time({is_woman(meghann)}),
		nl, write('Logtalk DCG call(number of inferences):'),
		prolog_statistics:time(mydcg::is_woman(meghann)).

:- end_object.
