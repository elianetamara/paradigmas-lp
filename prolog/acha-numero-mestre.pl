divisor_ou_digito(H, MESTRE) :-
    (H mod MESTRE =:= 0 ;   H mod 10 =:= MESTRE).

compativel(_, [], []).
compativel(MESTRE, [H|T], [-1|T2]) :-
    divisor_ou_digito(H, MESTRE),
    compativel(MESTRE, T, T2).
compativel(MESTRE, [H|T], [H|T2]) :-
    \+ divisor_ou_digito(H, MESTRE),
    compativel(MESTRE, T, T2).

main :-
    read(LISTA),
    read(MESTRE),
    (between(1, 9, MESTRE) ->
    compativel(MESTRE, LISTA, OUTPUT), writeln(OUTPUT)
    ; writeln(LISTA)),
    halt.
