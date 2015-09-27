
% plain prolog
:- include('firstname1.lgt').

is_woman(Token) :-
    firstname(female, [Token], []).

% logtalk object
:- object(mydcg).

    	:- public([
    		is_woman/1,
        firstname//1
    	]).

      is_woman(Token) :-
          firstname(female, [Token], []).

      :- include('firstname1.lgt').

:- end_object.
