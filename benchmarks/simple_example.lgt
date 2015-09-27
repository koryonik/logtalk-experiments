
plain_prolog_simple :-
    fail.

logtalk_obj_simple_wrapped :-
   logtalk_obj::simple.

:- object(logtalk_obj).

    	:- public([
        simple/0
    	]).

      simple :-
        fail.

:- end_object.
