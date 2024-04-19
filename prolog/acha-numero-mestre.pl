compativel(_, _, [], []).

compativel(MESTRE, MESTRE,  [H | T] , [-1 | TOUTPUT]) :-
    divisivel(H, MESTRE),
    compativel(MESTRE, MESTRE, T, TOUTPUT).

compativel(MESTRE, MESTRE,  [H | T] , [-1 | TOUTPUT]) :-
    digito_final(H, MESTRE),
    compativel(MESTRE, MESTRE, T, TOUTPUT).

compativel(MESTRE, MESTRE, [H|T], [H|TOUTPUT]) :-
    \+ (divisivel(H, MESTRE); digito_final(H, MESTRE)),
    compativel(MESTRE, MESTRE, T, TOUTPUT).

divisivel(NUMERO, MESTRE) :-
    NUMERO mod MESTRE =:= 0.

digito_final(NUMERO, MESTRE) :-
    NUMERO mod 10 =:= MESTRE.

valida_mestre(MESTRE, _) :-
    between(1, 9, MESTRE), !.
valida_mestre(_, LISTA) :-
    writeln(LISTA), halt.

main :-
    read(LISTA),
    read(MESTRE),
    valida_mestre(MESTRE, LISTA),
    compativel(MESTRE, MESTRE, LISTA, OUTPUT),
    writeln(OUTPUT),
    halt.

