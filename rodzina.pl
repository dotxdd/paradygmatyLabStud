rodzic(zofia, marcin).
rodzic(andrzej, marcin).
rodzic(andrzej, kasia).
rodzic(marcin, ania).
rodzic(marcin, krzyœ).
rodzic(krzyœ, miko³aj).
kobieta(zofia).
kobieta(kasia).
kobieta(ania).
mê¿czyzna(andrzej).
mê¿czyzna(marcin).
mê¿czyzna(krzyœ).
mê¿czyzna(miko³aj).
siostra(X,Y):-
rodzic(Z,X),
rodzic(Z,Y),
kobieta(X),
    X \= Y.
dziadkowie(X, Z):- rodzic(X, Y), rodzic(Y, Z).

