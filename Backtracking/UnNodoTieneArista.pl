conexion(s, v1, 16).
conexion(v1, v3, 12).
conexion(v3, t, 20).
conexion(s, v2, 13).
conexion(v2, v4, 14).
conexion(v4, t, 4).
conexion(v2, v1, 4).
conexion(v3, v2, 9).
conexion(v4, v3, 7).

nodo_tiene_aristas(Nodo) :- conexion(Nodo, _, _). 
nodo_tiene_aristas(Nodo) :- conexion(_, Nodo, _). 
