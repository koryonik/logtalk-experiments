# benchmarks logtalk method calls

	?- {loader}.
	% [ /Users/pmoura/logtalk-experiments/benchmarks/benchmark.lgt loaded ]
	% [ /Users/pmoura/logtalk-experiments/benchmarks/dcg_example.lgt loaded ]
	% [ /Users/pmoura/logtalk-experiments/benchmarks/simple_example.lgt loaded ]
	% [ /Users/pmoura/logtalk-experiments/benchmarks/bench.lgt loaded ]
	Plain Prolog goal (number of inferences):
	% 3 inferences, 0.000 CPU in 0.000 seconds (30% CPU, 500000 Lips)
	Logtalk goal (number of inferences):
	% 2 inferences, 0.000 CPU in 0.000 seconds (67% CPU, 500000 Lips)
	
	bench plain_prolog_simple ...
	Number of repetitions: 500000
	Total time calls: 0.19803881645202637 sec
	Average time / call : 3.9607763290405274e-7 sec
	Number of calls / sec : 2524757.564995455
	
	bench logtalk_obj::simple ...
	Number of repetitions: 500000
	Total time calls: 0.15421795845031738 sec
	Average time / call : 3.0843591690063476e-7 sec
	Number of calls / sec : 3242164.5638700323
	
	Plain Prolog DCG call (number of inferences):
	% 2 inferences, 0.000 CPU in 0.000 seconds (97% CPU, 8658 Lips)
	
	Logtalk DCG call(number of inferences):
	% 2 inferences, 0.000 CPU in 0.000 seconds (94% CPU, 6309 Lips)
	% [ /Users/pmoura/logtalk-experiments/benchmarks/loader.lgt loaded ]
	% (0 warnings)
	true.
