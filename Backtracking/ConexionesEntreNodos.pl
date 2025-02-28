conexion(s, v1, 16).
conexion(v1, v3, 12).
conexion(v3, t, 20).
conexion(s, v2, 13).
conexion(v2, v4, 14).
conexion(v4, t, 4).
conexion(v2, v1, 4).
conexion(v3, v2, 9).
conexion(v4, v3, 7).

existe_conexion_Saskatoon_Vancouver(X, Y):- conexion(X, Y, _).

