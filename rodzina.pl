rodzic(zofia, marcin).
rodzic(andrzej, marcin).
rodzic(andrzej, kasia).
rodzic(marcin, ania).
rodzic(marcin, krzy�).
rodzic(krzy�, miko�aj).
kobieta(zofia).
kobieta(kasia).
kobieta(ania).
m�czyzna(andrzej).
m�czyzna(marcin).
m�czyzna(krzy�).
m�czyzna(miko�aj).
siostra(X,Y):-
rodzic(Z,X),
rodzic(Z,Y),
kobieta(X),
    X \= Y.
dziadkowie(X, Z):- rodzic(X, Y), rodzic(Y, Z).

