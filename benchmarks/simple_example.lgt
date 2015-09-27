
plain_prolog_simple :-
    fail.

% the following ::/2 goal would only be resolved at runtime: 
% logtalk_obj_simple_wrapped :-
%   logtalk_obj::simple.

:- object(logtalk_obj).

    	:- public([
        simple/0
    	]).

      simple :-
        fail.

:- end_object.
