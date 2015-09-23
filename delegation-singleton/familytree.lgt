:- object(familytree).

    :- public([
        father/2, 
        mother/2, 
        brother/2, 
        sister/2,
        ancestor/2,
        parent/2,
        male/1, 
        female/1,
        family/1,
        set_family/1
    ]).

    :- private(family_/1).
    :- dynamic(family_/1).

    family(Family) :-
        ::family_(Family). 
 
    set_family(Family) :-
        ::retractall(family_(_)),
        ::assertz(family_(Family)).
 
    father(Father, Child) :-
        ::male(Father),
        ::parent(Father, Child).

    mother(Mother, Child) :-
        ::female(Mother),
        ::parent(Mother, Child).

    sister(Sister, Child) :-
        ::female(Sister),
        ::parent(Parent, Sister),
        ::parent(Parent, Child),
        Sister \== Child.

    brother(Brother, Child) :-
        ::male(Brother),
        ::parent(Parent, Brother),
        ::parent(Parent, Child),
        Brother \== Child.

    ancestor(Parent, Child) :- 
        ::parent(Parent, Child).
    ancestor(Parent,Child) :- 
        ::parent(Parent,Somebody),
        ::ancestor(Somebody,Child).

    male(Male) :-        
        ::family(Db), 
        Db::current_predicate(male/1),          
        Db::male(Male).

    female(Fem) :-
        ::family(Db),
        Db::current_predicate(female/1),          
        Db::female(Fem).

    parent(Parent, Child) :-        
        ::family(Db), 
        Db::current_predicate(parent/2),          
        Db::parent(Parent, Child).

:- end_object.