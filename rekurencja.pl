% silnia
silnia(0,1).
silnia(N,R):-
    N>0,
    NewN is N -1,
    silnia(NewN, R1),
    R is N*R1.
% fibbonaci
fib(0,0).
fib(1,1).
fib(N,R):-
    N >1,
    N1 is N-1,
    N2 is N-2,
    fib(N1, R1),
    fib(N2,R2),
    R is R1 +R2,
    write(R ), write(,).
%user oblicza a do n


potega1:-
    write('Podaj A:' ), read(A), nl,
    write('Podaj B:'), read(B),
    (B >=0 -> potega(A,B, R), write(R)
    ;
     write('bledne dane')).
potega(_,0,1).
potega(A,B,R):-
    B>0,
    B1 is B-1,
    potega(A,B1,R1),
    R is A*R1.
hanoi(1, A, B, _) :-
    write('Przenieœ kr¹¿ek z '), write(A), write(' na '), write(B), nl.

hanoi(N, A, B, C) :-
    N > 1,
    M is N - 1,
    hanoi(M, A, C, B),
    hanoi(1, A, B, _),
    hanoi(M, C, B, A).
