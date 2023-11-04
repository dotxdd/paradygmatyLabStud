rodzic(zosia, marcin).
rodzic(andrzej, marcin).
rodzic(andrzej, kasia).
rodzic(marcin, ania).
rodzic(marcin, krzy�).
rodzic(krzy�, miko�aj).
m�czyzna(andrzej).
m�czyzna(marcin).
m�czyzna(krzy�).
m�czyzna(miko�aj).
kobieta(kasia).
kobieta(ania).
kobieta(zosia).
potomek(Y, X):-
rodzic(X, Y).
matka(X, Y):-
rodzic(X, Y),
kobieta(X).
dziadkowie(X, Z):-
rodzic(X, Y),
rodzic(Y, Z).
siostra(X, Y):-
rodzic(Z, X),
rodzic(Z, Y),
kobieta(X).
szczesliwy(X):-
    rodzic(X,Y),
    potomek(Y,X).
dwoje_dzieci(X):-
    rodzic(X,Y),
    siostra(Y,Z),
    kobieta(Z).
wnuk(Z,X):-
    rodzic(X,Y),
    rodzic(Y,Z).
ciotka(X,Y):-
  rodzic(Z,Y),
  siostra(X,Z),
    kobieta(X).
nastepca(X,Y):-
   potomek(X,Y).
nastepca(X,Z):-
  potomek(X,Y),
  nastepca(Y,Z).

