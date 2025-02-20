enemigo(corea_del_sur).
usc(coronel_west).
vendio_armas(coronel_west, corea_del_sur).

coronel_criminal(X):-enemigo(Y), usc(X), vendio_armas(X, Y).