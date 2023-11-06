lot(a2324, warszawa, krakow, 1800, 1845, day(1, 1, 1, 1, 1, 1, 1)).
lot(lf224, warszawa, rzeszow, 1850, 1930, day(1, 1, 1, 1, 1, 1, 1)).
lot(m232, warszawa, berlin, 1400, 1525, day(1, 0, 1, 1, 0, 0, 1)).
lot(a231, warszawa, monachium, 1420, 1600, dni(0, 1, 1, 0, 1, 1, 1)).
lot(l324, warszawa, londyn, 1330, 1600, day(1, 1, 1, 1, 1, 1, 1)).
lot(a2324, krakow, warszawa, 700, 745, day(1, 1, 1, 1, 1, 1, 1)).
lot(lf224, rzeszow, warszawa, 850, 940, day(1, 1, 1, 1, 1, 1, 1)).
lot(m232, berlin, warszawa, 1600, 1725, day(1, 0, 1, 1, 0, 0, 1)).
lot(a231, monachium, warszawa, 1720, 1850, day(0, 1, 1, 0, 1, 1, 1)).
lot(l324, londyn, warszawa, 1720, 1940, day(1, 1, 1, 1, 1, 1, 1)).
przelot_we_wtorek(MiejscePoczatkowe, MiejsceDocelowe, GodzinaWylotu, GodzinaPrzylotu) :-
    lot(_, MiejscePoczatkowe, MiejsceDocelowe, GodzinaWylotu, GodzinaPrzylotu, day(_, _, _, _, _, 1, _)),
    write('Lot z '), write(MiejscePoczatkowe), write(' do '), write(MiejsceDocelowe),
    write(' o godz.:'), write(GodzinaWylotu), write(' do '), write(GodzinaPrzylotu).
dni_kursowania_berlin_warszawa(X) :-
    lot(_, berlin, warszawa, _, _, X),
    write('Samolot z Berlina do Warszawy kursuje w dni: '), write(X).

godziny_przelotow_rzeszow_warszawa(GodzinaWylotu, GodzinaPrzylotu) :-
    lot(_, rzeszow, warszawa, GodzinaWylotu, GodzinaPrzylotu, _),
    write('Lot z Rzeszowa do Warszawy o godzinie '), write(GodzinaWylotu),
    write(' do '), write(GodzinaPrzylotu).
samoloty_ladujace_w_warszawie(X) :-
    lot(NumerLotu, _, warszawa, X, _, _),
    (X >= 800, X =< 1000 ; X >= 1800),
    write('Samolot '), write(NumerLotu), write(' l¹duje w Warszawie o godzinie '), write(X).
