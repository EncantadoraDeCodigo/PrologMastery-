conexion(s, v1, 16).
conexion(v1, v3, 12).
conexion(v3, t, 20).
conexion(s, v2, 13).
conexion(v2, v4, 14).
conexion(v4, t, 4).
conexion(v2, v1, 4).
conexion(v3, v2, 9).
conexion(v4, v3, 7).

costo_con_intermedio(X, Y, Z, CostoTotal) :-
    conexion(X, Y, Costo1), 
    conexion(Y, Z, Costo2),  
    CostoTotal is Costo1 + Costo2. 
















