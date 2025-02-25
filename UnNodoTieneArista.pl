conexion(nodo1, nodo2, arista).
conexion(nodo2, nodo3, arista).
conexion(nodo3, nodo4, arista).

nodo_tiene_aristas(X):- conexion(X, _, _).
nodo_tiene_aristas(X):- conexion(_, X, _).


