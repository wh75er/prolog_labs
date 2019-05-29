auto( auto1).
auto( auto2).
auto( auto3).
auto( auto4).
auto( auto5).
auto( auto6).
auto( auto7).

autoMarque( auto1, jaguar).
autoMarque( auto2, jaguar).
autoMarque( auto3, jaguar).
autoMarque( auto4, lada).
autoMarque( auto5, lada).
autoMarque( auto6, bmw).
autoMarque( auto7, bmw).


autoModel( auto1, xf).
autoModel( auto2, xj).
autoModel( auto3, f-pace).

autoModel( auto4, samara).
autoModel( auto5, priora).

autoModel( auto6, z4).
autoModel( auto7, x6).


sportAuto( auto1).
sportAuto( auto2).
sportAuto( auto3).
sportAuto( auto7).

casualAuto( auto4).
casualAuto( auto5).
casualAuto( auto6).


green(auto1).
white(auto2).
white(auto5).
white(auto6).
white(auto7).
black(auto3).
black(auto4).


isGreenCasualAuto( Auto) :-
    green( Auto),
    casualAuto( Auto).

isBlackCasualAuto( Auto) :-
    black( Auto),
    casualAuto( Auto).

isJaguarMarque( Auto) :-
    autoMarque( Auto, jaguar).

isJaguarMarqueSport( Auto) :- 
    autoMarque( Auto, jaguar),
    sportAuto( Auto).

hasWhiteColorAndBmw( Auto, Color) :-
    autoColor( Auto, Color),
    autoMarque( Auto, bmw).
