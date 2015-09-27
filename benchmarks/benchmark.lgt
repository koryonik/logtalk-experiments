:- object(benchmark).

    :- public([
      benchmark/1,
      benchmark_run/2
    ]).

    benchmark(Goal) :-
        N = 500000, % some sufficiently large number of repetitions
        get_time(Seconds1),
        benchmark::benchmark_run(N, Goal),nl,
        write('Number of repetitions: '), write(N), nl,
        get_time(Seconds2),
        Total is (Seconds2 - Seconds1),
        write('Total time calls: '), write(Total), write(' sec'), nl,
        Average is Total/N,
        write('Average time / call : '), write(Average), write(' sec'), nl,
        Speed is 1.0/Average,
        write('Number of calls / sec : '), write(Speed), nl,!.

    % ugly code. just for testing
    benchmark_run(N,Goal) :-
      N > 0, %write(.),
      call(Goal),
      fail.
    benchmark_run(N, Goal) :-
      N > 0,
      M is N-1,
      benchmark_run(M, Goal).
    benchmark_run(_,_).

:- end_object.
