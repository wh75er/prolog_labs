predicates
    max2(integer, integer, integer)
    max3(integer, integer, integer, integer)

clauses
    max2(X, Y, X) :- X >= Y, !.
    max2(_, Y, Y).

    max3(X, Y, Z, X) :- X >= Y, X >= Z, !.
    max3(_, Y, Z, Y) :- Y >= Z, !.
    max3(_, _, Z, Z).

goal
    %max2(1, 3, Z).
    max3(4, 3, 2, P).
