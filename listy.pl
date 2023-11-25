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
polacz([], Lista, Lista).

polacz([Glowa | Ogon], Lista2, [Glowa | Wynik]) :-
    polacz(Ogon, Lista2, Wynik).
dodaj(X, Lista, [X|Lista]).

run:-
    [X|Y] = [1,2,3,4],
    write('zadanie 1'), nl pisz([X|Y]), nl,
    write('zadanie 2'), nl, write('dlugosc listy '), dlugosc([X|Y], D),
    write(D).
