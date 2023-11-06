zatrudnienie(anna, nowak, zelmer, duza_firma, 2000).
zatrudnienie(laszlo, cravensworth,the_family, mala_firma, 3000).
zatrudnienie(nandor, the_relentless, budex, srednia_firma, 2100).
zatrudnienie(collin, robinson, crop_zoo, duza_firma, 4010).
zatrudnienie(nadja, cravenswort, castleton, mala_firma, 3090).
zatrudnienie(guilermo, de_la_cruz, housewife, mala_firma, 300).

zadowolony(X) :-
    zatrudnienie(X, _, _, mala_firma, Zarobki),
    Zarobki > 2500.
zarabia_mniej(X) :-
    zatrudnienie(X, _, _, mala_firma, Zarobki),
    Zarobki < 1500.
