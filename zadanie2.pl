osoba(robert, 31, trenowanie).
osoba(andrzej, 25, gotowanie).
osoba(dariusz, 57, przeglad_wiadomosci).
osoba(magda, 18, czytanie_ksiazek).
osoba(klara, 27, gra_w_szachy).
osoba(iwona, 38, sen).

lubi(robert, trenowanie).
lubi(andrzej, gotowanie).
lubi(dariusz, przeglad_wiadomosci).
lubi(magda, czytanie_ksiazek).
lubi(klara, gra_w_szachy).
lubi(iwona, sen).
starszy(X, Y) :- osoba(X, WiekX, _), osoba(Y, WiekY, _), WiekX > WiekY.
