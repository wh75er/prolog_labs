predicates
    parent(symbol, symbol)
    male(symbol)
    female(symbol)
    grandparent(symbol, symbol)
    father(symbol, symbol)
    mother(symbol, symbol)
    offspring(symbol, symbol)
clauses
    parent(marsel,max).
    parent(yulia,max).
    parent(max,phil).
    parent(masha,jane).
    parent(jane,karina).
    parent(karina,max).
    
    male(marsel).
    male(phil).
    male(max).
    female(karina).
    female(yulia).
    female(masha).
    female(jane).
    
    offspring(X,Y) :- parent(Y,X).
    father(X,Y) :- parent(X,Y), male(X).
    mother(X,Y) :- parent(X,Y), female(X).
    grandparent(X,Y) :- parent(X,Z), parent(Z,Y).

goal
    grandparent(marsel, X).




