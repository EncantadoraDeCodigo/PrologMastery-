conyugues(abraham, mona).
conyugues(homero, marge).

padre(abraham, herbert).
padre(abraham, homero).
padre(homero, bart).
padre(homero, lisa).
padre(homero, maggie).
padre(clancy, selma).
padre(clancy, paty).
padre(clancy, marge).

madre(mona, homero).
madre(marge, bart).
madre(marge, lisa).
madre(marge, maggie).
madre(jacqueline, selma).
madre(jacqueline, paty).
madre(jacqueline, marge).
madre(selma, ling).

hermano(X, Y) :- padre(Z, X), padre(Z, Y), X \= Y.
abuelo(X, Y) :- padre(Z, Y), padre(X, Z).
abuela(X, Y) :- madre(Z, Y), madre(X, Z).







