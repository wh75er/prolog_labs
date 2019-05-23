domains
    Number = integer
    NList = Number*
predicates
    len(NList, Number)

    length(NList, Number)
    length(NList, Number, Number)

    listSum(NList, integer)
    deleteEl(NList, integer, NList)
    deleteEls(NList, integer, NList)

    /* Bubble sort */
    permutation(NList, NList)
    bubble(NList, NList)
    /* Bubble sort engds*/
    makeSet(NList, NList)
    makeSet(NList, integer, NList)

    makeListGreaterThanEl(NList, integer, NList)

    even(integer)
    makeListWithEvenPos(NList, NList).
    makeListWithEvenPos(NList, integer, NList).

    mergeLists(NList, NList, NList)
    merge(NList, Nlist, NList)

clauses
    len([], 0) :-
        !.
    len([_|Tail], X) :-
        len(Tail, X1),
        X = X1 + 1,
        !.

    length(List, X) :-
        length(List, 0, X),
        !.
    length([], Count, Count) :-
        !.
    length([_|Tail], Count, X) :-
        NewCount = Count + 1,
        length(Tail, NewCount, X).


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
           

    makeListGreaterThanEl([], _, []) :-
        !.
    makeListGreaterThanEl([Head|Tail], El, X) :-
        Head > El,
        makeListGreaterThanEl(Tail, El, X1),
        X = [Head|X1],
        !.
    makeListGreaterThanEl([_|Tail], El, X) :-
        makeListGreaterThanEl(Tail, El, X),
        !.


    even(N) :-
        N mod 2 = 0.
    makeListWithEvenPos([Head|Tail], [Head|X]) :-   
        Index = 1,
        makeListWithEvenPos(Tail, Index, X),
        !.
    makeListWithEvenPos([], _, []) :-
        !.
    makeListWithEvenPos([Head|Tail], Index, X) :-
        even(Index),
        Index1 = Index + 1,
        makeListWithEvenPos(Tail, Index1, X1),
        X = [Head|X1],
        !.
    makeListWithEvenPos([_|Tail], Index, X) :-
        Index1 = Index + 1,
        makeListWithEvenPos(Tail, Index1, X),
        !.

    mergeLists(L1, L2, X) :-
        length(L1, Len1),
        length(L2, Len2),
        Len1 < Len2,
        merge(L1, L2, X),
        !.
    mergeLists(L1, L2, X) :-
        merge(L2, L1, X),
        !.

    merge([Head|[]], L2, [Head|L2]) :-
        !.
    merge([Head|Tail], L2, [Head|X]) :-
        merge(Tail, L2, X),
        !.
    
goal
    %len([1, 2, 3, 4, 5, 6], Z).
    %length([1, 2, 3, 4, 5, 6, 7], Z).
    %listSum([2, 2, 2, 8, 2, 2], Z).
    %deleteEl([1, 2, 2, 3, 4, 3, 5, 6], 3, Z).
    %deleteEls([3, 1, 2, 2, 3, 4, 3, 5 ,6, 3], 3, Z).
    %makeSet([5, 5, 6, 3, 3, 3, 9, 10, 1, 1, 0, 5, 10], Set).
    %makeListGreaterThanEl([5, 3, 6, 99, 7, 9, 2, 0, 5, 3], 3, Z).
    %makeListWithEvenPos([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], Z).
    mergeLists([9, 8, 7, 6],  [1, 2, 3], Z). 
