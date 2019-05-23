domains
    Number = integer
    NList = Number*
predicates
    length(NList, Number)

clauses
    length([], 0) :-
        !.
    length([_|Tail], X) :-
        length(Tail, X1),
        X = X1 + 1,
        !.
    
goal
    length([1, 2, 3, 4, 5, 6], Z).
