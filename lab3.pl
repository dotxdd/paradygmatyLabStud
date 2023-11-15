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
objêtoœæ(Kontener, Objêtoœæ) :-
    d³ugoœæ(Kontener, D),
    szerokoœæ(Kontener, S),
    wysokoœæ(Kontener, W),
    Objêtoœæ is D * S * W.
nwd(X, Y, X) :- X =:= Y.
nwd(X, Y, D) :- X < Y, Diff is Y - X, nwd(X, Diff, D).
nwd(X, Y, D) :- X > Y, Diff is X - Y, nwd(Y, Diff, D).
