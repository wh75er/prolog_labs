domains
    Number = integer
    NList = Number*
predicates
    len(NList, Number)
    listSum(NList, integer)

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
    
goal
    %len([1, 2, 3, 4, 5, 6], Z).
    listSum([2, 2, 2, 8, 2, 2], Z).
