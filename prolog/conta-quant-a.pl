conta_a([], 0).
conta_a([H|T], COUNT) :-
    (H == 'a' ; H == 'A'),
    conta_a(T, REST),
    COUNT is REST + 1.
conta_a([_|T], COUNT) :-
    conta_a(T, COUNT).

conta_a_lista([], 0).
conta_a_lista([NOME|T], COUNT) :-
    string_chars(NOME, NOMECHAR),
    conta_a(NOMECHAR, COUNTNOME),
    conta_a_lista(T, RESTCOUNT), 
    COUNT is RESTCOUNT + COUNTNOME.

main :-
    read(NOMES),
    conta_a_lista(NOMES, COUNT),
    write(COUNT),
    halt.
