main :-
read(NUMERO),
read(DIGITO),
valida_numero(NUMERO),
valida_digito(DIGITO),
relaciona_numeros(NUMERO, DIGITO).

valida_numero(X) :-
X > 0, !.
valida_numero(_) :-
write('Input invalido.'), halt.

valida_digito(X) :-
X > 0, between(1, 9, X), !.
valida_digito(_) :-
write('Input invalido.'), halt.

divisor(NUMERO, DIGITO) :-
NUMERO mod DIGITO =:= 0.

digito_final(NUMERO, DIGITO) :-
NUMERO mod 10 =:= DIGITO.

relaciona_numeros(NUMERO, DIGITO) :-
divisor(NUMERO, DIGITO), digito_final(NUMERO, DIGITO),
write(DIGITO), write(' eh ao mesmo tempo divisor e o ultimo digito de '), write(NUMERO), write('.'),
halt.
relaciona_numeros(NUMERO, DIGITO) :-
divisor(NUMERO, DIGITO),
write(DIGITO), write(' eh divisor de '), write(NUMERO), write('.'),
halt.
relaciona_numeros(NUMERO, DIGITO) :-
digito_final(NUMERO, DIGITO),
write(DIGITO), write(' eh o ultimo digito de '), write(NUMERO), write('.'),
halt.