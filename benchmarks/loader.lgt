:- initialization((
	logtalk_load([
		benchmark,
		dcg_example,
		simple_example,
		bench
	], [optimize(on)]),
	bench::bench
)).
