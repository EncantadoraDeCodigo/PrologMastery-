
persona(abraham, simpson).
persona(mona, simpson).
persona(clancy, bouvier).
persona(jacqueline, bouvier).
persona(herbert, powell).
persona(homero, simpson).
persona(marge, simpson).
persona(patty, bouvier).
persona(selma, bouvier).
persona(bart, simpson).
persona(lisa, simpson).
persona(maggie, simpson).
persona(ling, bouvier).


conyuges(abraham, mona).
conyuges(homero, marge).
conyuges(clancy, jacqueline).

padres([abraham, mona], homero).
padres([abraham, _], herbert).  
padres([homero, marge], bart).
padres([homero, marge], lisa).
padres([homero, marge], maggie).
padres([clancy, jacqueline], marge).
padres([clancy, jacqueline], patty).
padres([clancy, jacqueline], selma).
padres([selma, _], ling). 

hermano(X, Y) :-
    padres([Padre, Madre], X),
    padres([Padre, Madre], Y),
    X \= Y.

abuelo(Abuelo, Nieto) :-
    padres([Padre, Madre], Nieto),
    (padres([Abuelo, _], Padre); padres([Abuelo, _], Madre)).

abuela(Abuela, Nieto) :-
    padres([Padre, Madre], Nieto),
    (padres([_, Abuela], Padre); padres([_, Abuela], Madre)).
