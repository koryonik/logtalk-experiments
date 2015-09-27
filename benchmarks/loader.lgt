:- initialization((
	logtalk_load([
		benchmark,
		dcg_example,
		simple_example
	], [optimize(on)]),
	nl,write('bench plain_prolog_simple ...'),
	benchmark::benchmark({plain_prolog_simple}),
	nl,write('bench logtalk_obj::simple ...'),
	benchmark::benchmark(logtalk_obj::simple),
	nl,write('bench logtalk_obj_simple_wrapped ...'),
	benchmark::benchmark({logtalk_obj_simple_wrapped})
)).
