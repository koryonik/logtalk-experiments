# benchmarks logtalk method calls

load the example dependencies (without category adams) :

  	?- logtalk_load(loader).
  	true.

test plain prolog predicate call loop :

    ?- benchmark(plain_prolog_simple).

    Number of repetitions: 500000
    Total time calls: 0.33799099922180176 seconds
    Average time per call: 6.759819984436035e-7 seconds
    Number of calls per second: 1479329.3346604244
    true.

test logtalk method call loop :

    ?- benchmark(logtalk_obj::simple).

    Number of repetitions: 500000
    Total time calls: 2.950408935546875 seconds
    Average time per call: 5.90081787109375e-6 seconds
    Number of calls per second: 169468.0333888435
    true.
