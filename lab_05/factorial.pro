predicates
    factorial(integer)
    factorial(integer, integer)

clauses
    factorial(1, X) :-
        X = 1.
    factorial(N, X) :-
        N_1 = N - 1,
        factorial(N_1, X1),
        X = X1 * N.
    factorial(N) :-
        factorial(N, X), write(X).

goal
    factorial(5).
