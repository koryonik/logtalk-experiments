% load the SWI-Prolog "statistics" library
:- use_module(library(statistics)).

:- object(bench).

    :- public(bench/0).
    bench :-
        write('Plain Prolog goal:'), nl,
        prolog_statistics:time({plain_prolog_simple}).
    bench :-
        write('Logtalk goal:'), nl,
        prolog_statistics:time(logtalk_obj::simple).
    bench.

:- end_object.
