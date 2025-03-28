
pareja(abraham, mona, [herbert, homero]).
pareja(clancy, jacqueline, [marge, patty, selma]).
pareja(homero, marge, [bart, lisa, maggie]).
pareja(selma, _, [ling]).

padre(Padre, Hijo) :-
    pareja(Padre, _, Hijos),
    member(Hijo, Hijos).

madre(Madre, Hijo) :-
    pareja(_, Madre, Hijos),
    member(Hijo, Hijos).

abuelo(Abuelo, Nieto) :-
    padre(Abuelo, Padre),
    (padre(Padre, Nieto); madre(Padre, Nieto)).

abuela(Abuela, Nieto) :-
    madre(Abuela, Madre),
    (padre(Madre, Nieto); madre(Madre, Nieto)).

hermano(X, Y) :-
    X \= Y,
    ( (padre(P, X), padre(P, Y))
    ; (madre(M, X), madre(M, Y)) ).

tio(Tio, Sobrino) :-
    (padre(P, Sobrino); madre(P, Sobrino)),
    hermano(Tio, P).

primo(X, Y) :-
    (padre(P1, X); madre(P1, X)),
    (padre(P2, Y); madre(P2, Y)),
    hermano(P1, P2),
    X \= Y.


