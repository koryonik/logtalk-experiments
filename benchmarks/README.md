# benchmarks logtalk method calls

	?- {loader}.
	% [ /Users/pmoura/logtalk-experiments/benchmarks/benchmark.lgt loaded ]
	% [ /Users/pmoura/logtalk-experiments/benchmarks/dcg_example.lgt loaded ]
	% [ /Users/pmoura/logtalk-experiments/benchmarks/simple_example.lgt loaded ]
	% [ /Users/pmoura/logtalk-experiments/benchmarks/bench.lgt loaded ]
	Plain Prolog goal (number of inferences):
	% 3 inferences, 0.000 CPU in 0.000 seconds (57% CPU, 375000 Lips)
	Logtalk goal (number of inferences):
	% 2 inferences, 0.000 CPU in 0.000 seconds (74% CPU, 333333 Lips)
	
	bench plain_prolog_simple ...
	Number of repetitions: 500000
	Total time calls: 0.19626688957214355 sec
	Average time / call : 3.925337791442871e-7 sec
	Number of calls / sec : 2547551.454501502
	
	bench logtalk_obj::simple ...
	Number of repetitions: 500000
	Total time calls: 0.15210914611816406 sec
	Average time / call : 3.0421829223632813e-7 sec
	Number of calls / sec : 3287113.3180353357
	
	Plain Prolog DCG call (number of inferences):
	% 11 inferences, 0.000 CPU in 0.000 seconds (97% CPU, 56701 Lips)
	
	Logtalk DCG call(number of inferences):
	% 2 inferences, 0.000 CPU in 0.000 seconds (89% CPU, 5952 Lips)
	% [ /Users/pmoura/logtalk-experiments/benchmarks/loader.lgt loaded ]
	% (0 warnings)
	true.
