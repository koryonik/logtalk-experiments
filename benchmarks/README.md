# benchmarks logtalk method calls

load the example dependencies (without category adams) :

  	?- logtalk_load(loader).

    bench plain_prolog_simple ...
    Number of repetitions: 500000
    Total time calls: 0.33515501022338867 sec
    Average time / call : 6.703100204467774e-7 sec
    Number of calls / sec : 1491847.0103333327

    bench logtalk_obj::simple ...
    Number of repetitions: 500000
    Total time calls: 3.7086780071258545 sec
    Average time / call : 7.417356014251709e-6 sec
    Number of calls / sec : 134818.92982871522

    bench logtalk_obj_simple_wrapped ...
    Number of repetitions: 500000
    Total time calls: 2.392345905303955 sec
    Average time / call : 4.78469181060791e-6 sec
    Number of calls / sec : 208999.87702090823

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
