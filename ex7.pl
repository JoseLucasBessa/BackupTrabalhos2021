interseccao([X|Y],M,[X|Z]) :- faz_parte_de(X,M), interseccao(Y,M,Z).
interseccao([X|Y],M,Z) :- \+ faz_parte_de(X,M), interseccao(Y,M,Z).
interseccao([],M,[]).

faz_parte_de(X,[X|_]).
faz_parte_de(X,[_,CAUDA]) :- faz_parte_de(X,CAUDA).

