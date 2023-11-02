osoba(gabriel, greagory, agatha, mezczyzna, 22).
osoba(alice, greagory, agatha, kobieta, 20).
osoba(greagory, irene, zbigniew, mezczyzna, 47).
osoba(agatha, emilly, george, kobieta, 48).
osoba(stanley, emilly, george, mezczyzna, 54).
rodzenstwo(X, Y) :-
    osoba(X, OjciecX, MatkaX, _, _),
    osoba(Y, OjciecY, MatkaY, _, _),
    (OjciecX = OjciecY, MatkaX = MatkaY; OjciecX = MatkaY, MatkaX = OjciecY),
    X \= Y.

bracia(X, Y) :-
    osoba(X, OjciecX, MatkaX, mezczyzna, _),
    osoba(Y, OjciecY, MatkaY, mezczyzna, _),
    rodzenstwo(X, Y),
    OjciecX = OjciecY,
    MatkaX = MatkaY,
    X \= Y.

siostry(X, Y) :-
    osoba(X, OjciecX, MatkaX, kobieta, _),
    osoba(Y, OjciecY, MatkaY, kobieta, _),
    rodzenstwo(X, Y),
    OjciecX = OjciecY,
    MatkaX = MatkaY,
    X \= Y.

brat(X, Y) :-
    bracia(X, Y),
    X \= Y.

siostra(X, Y) :-
    siostry(X, Y),
    X \= Y.
