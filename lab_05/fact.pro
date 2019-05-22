predicates
	factorial(integer,integer).
	factorial(integer).
	fact(integer,integer).
	f(integer,integer,integer,integer).
	
	fibonacci(integer, integer).
clauses

	factorial(1, X):- X = 1.
	factorial(N, X):- NN = N - 1,
			factorial(NN, X1),
			X = X1 * N.
	factorial(N):- factorial(N, X), write(X).
			
	fact(N, F):- f(N, F, 1, 1).
	f(N, F, N, F):- !.
	f(N, F, N1, F1):- N11 = N1 + 1,
			F11 = F1 * N11,
			f(N, F, N11, F11).
			
	fibonacci(1, 1):-!.
	fibonacci(2, 1):-!.
	fibonacci(I, R):- I > 2, I1 = I - 1, I2 = I - 2,
		fibonacci(I1, M), fibonacci(I2, N), R = N + M.

goal
	factorial(5).
	