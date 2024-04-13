main :-
read(N),
quadrados_perfeitos(N, 1).

quadrados_perfeitos(0, _) :- halt.
quadrados_perfeitos(N , NUM) :-
N > 0,
QUAD is NUM * NUM,
write(QUAD), nl,
PROXN is N-1,
PROXNUM is NUM+1,
quadrados_perfeitos(PROXN, PROXNUM).