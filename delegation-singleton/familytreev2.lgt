:- object(familytreev2, implements(family)).

    :- public([
        father/2,
        mother/2,
        brother/2,
        sister/2,
        ancestor/2,
        family/1,
        set_family/1
    ]).

    :- private(family_/1).
    :- dynamic(family_/1).

    family(Family) :-
        family_(Family).

    set_family(Family) :-
        conforms_to_protocol(Family, family, _),!,
        retractall(family_(_)),
        assertz(family_(Family)).

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
        family(Db),
        Db::male(Male).

    female(Fem) :-
        family(Db),
        Db::female(Fem).

    parent(Parent, Child) :-
        family(Db),
        Db::parent(Parent, Child).

:- end_object.
