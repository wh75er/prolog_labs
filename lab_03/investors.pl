investor( mike).
investor( john).
investor( robert).
investor( jena).
investor( leyla).
investor( tom).
investor( kate).

bank( sberbank).
bank( raiffeisen).
bank( alphabank).
bank( vtb).
bank( tinkoff).

male( mike).
male( john).
male( robert).
male( tom).

female( jena).
female( kate).
female( leyla).

investment( mike, 100, sberbank).
investment( mike, 1000, raiffeisen).
investment( john, 200, raiffeisen).
investment( robert, 10, sberbank).
investment( jena, 80, vtb).
investment( jena, 800, alphabank).
investment( leyla, 999, tinkoff).
investment( tom, 666, alphabank).
investment( kate, 1000, raiffeisen).

deposit( mike, 5000, raiffeisen).
deposit( mike, 1000, alphabank).
deposit( john, 5000, raiffeisen).
deposit( robert, 4539, sberbank).
deposit( robert, 453, raiffeisen).
deposit( robert, 99999, tinkoff).
deposit( jena, 300, alphabank).
deposit( leyla, 1209, vtb).
deposit( leyla, 1999, raiffeisen).
deposit( tom, 3999, sberbank).
deposit( kate, 1286, sberbank).
deposit( kate, 12, vtb).


hasDepositIn( Name, Bank) :-
    deposit( Name, _Z, Bank).

isFemaleAndInvestorOfTinkoff( Name) :-
    female( Name),
    investment( Name, _Z, tinkoff).

investorOfBankIsInvestorOfOtherBank( Name, Bank) :-
    investment( Name, _Z, Bank),
    investment( Name, _X, Y),
    different(Bank, Y).
    
different( X, Y) :-
    not(X = Y).
