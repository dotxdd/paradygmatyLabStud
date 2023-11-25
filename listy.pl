%listy
pisz([]).
pisz([H|T]):-
    write(H),
    write(' '),
    pisz(T).
nalezy(E, [E,_]).
nalezy(E,[_,T]):-
    nalezy(E,T).

dlugosc([], 0).

dlugosc([_ | Reszta], Dlugosc) :-
    dlugosc(Reszta, DlugoscOgonu),
    Dlugosc is DlugoscOgonu + 1.
