domains
    Number = integer
    NList = Number*
predicates
    len(NList, Number)
    listSum(NList, integer)
    deleteEl(NList, integer, NList)
    deleteEls(NList, integer, NList)

clauses
    len([], 0) :-
        !.
    len([_|Tail], X) :-
        len(Tail, X1),
        X = X1 + 1,
        !.


    listSum([Head|[]], Head) :-
        !.
    listSum([Head|Tail], X) :-
        listSum(Tail, X1),
        X = Head + X1,
        !.


    deleteEl([], _, []) :-
        !.
    deleteEl([El|Tail], El, Tail) :-
        !.
    deleteEl([Head|Tail], El, [Head|X]) :-
        deleteEl(Tail, El, X).


    deleteEls([], _, []) :-
        !.
    deleteEls([El|Tail], El, X1) :-
        deleteEls(Tail, El, X1),
        !.
    deleteEls([Head|Tail], El, [Head|X]) :-
        deleteEls(Tail, El, X).

    
goal
    %len([1, 2, 3, 4, 5, 6], Z).
    %listSum([2, 2, 2, 8, 2, 2], Z).
    %deleteEl([1, 2, 2, 3, 4, 3, 5, 6], 3, Z).
    deleteEls([3, 1, 2, 2, 3, 4, 3, 5 ,6, 3], 3, Z).
