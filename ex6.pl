uniao([X|Y], Z, W) :- faz_parte_de(X,Z), uniao(Y,Z,W).
uniao([X|Y], Z, [X|W]) :- \+ faz_parte_de(X,Z) , uniao(Y,Z,W). 
uniao([], Z, Z).

faz_parte_de(X, [X|_]).
faz_parte_de(X, [_|cauda]) :- faz_parte_de(X, cauda).

