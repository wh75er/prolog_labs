predicates
    factorial(integer)
    factorial(integer, integer)

    fibonacci(integer)
    fibonacci(integer, integer)

clauses
    factorial(1, X) :-
        X = 1.
    factorial(N, X) :-
        N_1 = N - 1,
        factorial(N_1, X1),
        X = X1 * N.
    factorial(N) :-
        factorial(N, X), 
        write(X).

    fibonacci(1, 1) :-
        !.
    fibonacci(2, 1) :-
        !.
    fibonacci(N, X) :-
        N_1 = N - 1,
        N_2 = N - 2,
        fibonacci(N_1, I1),
        fibonacci(N_2, I2),
        X = I1 + I2.
    fibonacci(N) :-
        fibonacci(N, X),
        write(X).
    
goal
    fibonacci(5).
