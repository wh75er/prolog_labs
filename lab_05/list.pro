domains
    Number = integer
    NList = Number*
predicates
    len(NList, Number)
    listSum(NList, integer)
    deleteEl(NList, integer, NList)
    deleteEls(NList, integer, NList)

    /* Bubble sort */
    permutation(NList, NList)
    bubble(NList, NList)
    /* Bubble sort engds*/

    makeSet(NList, NList)
    makeSet(NList, integer, NList)

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


    permutation([X,Y|T],[Y,X|T]) :-
        X > Y,
        !.
    permutation([X|T],[X|T1]) :-
        permutation(T,T1).
    bubble(L,L1) :-
        permutation(L,LL), 
        !,
        bubble(LL,L1). 
    bubble(L,L). 


    makeSet([], []) :-
        !.
    makeSet(List, X) :-
        bubble(List, Sorted),
        Sorted = [Head|Tail],
        makeSet(Tail, Head, X1),
        X = [Head|X1],
        !.
    makeSet([], _, []) :-
        !.
    makeSet([Head|Tail], Head, X) :-
        makeSet(Tail, Head, X),
        !.
    makeSet([Head|Tail], _, [Head|X]) :-
        makeSet(Tail, Head, X),
        !.
           


    
goal
    %len([1, 2, 3, 4, 5, 6], Z).
    %listSum([2, 2, 2, 8, 2, 2], Z).
    %deleteEl([1, 2, 2, 3, 4, 3, 5, 6], 3, Z).
    %deleteEls([3, 1, 2, 2, 3, 4, 3, 5 ,6, 3], 3, Z).
    makeSet([5, 5, 6, 3, 3, 3, 9, 10, 1, 1, 0, 5, 10], Set).
