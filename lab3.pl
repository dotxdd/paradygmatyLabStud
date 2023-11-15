rzeczownik(ryba).
rzeczownik(kosz).
rzeczownik(trawa).
rzeczownik(mirek).

czasownik(je).
czasownik(wyrzuca).
czasownik(jest).
czasownik(kosi).
czasownik(gryzie).
poprawne_zdanie(Rz1, Czasownik, Rz2) :-
    czasownik(Czasownik),
    rzeczownik(Rz1),
    rzeczownik(Rz2).
obj�to��(Kontener, Obj�to��) :-
    d�ugo��(Kontener, D),
    szeroko��(Kontener, S),
    wysoko��(Kontener, W),
    Obj�to�� is D * S * W.
nwd(X, Y, X) :- X =:= Y.
nwd(X, Y, D) :- X < Y, Diff is Y - X, nwd(X, Diff, D).
nwd(X, Y, D) :- X > Y, Diff is X - Y, nwd(Y, Diff, D).
