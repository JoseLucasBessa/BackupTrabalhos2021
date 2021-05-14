% Torres de hanoi
% Compilar no formato resolva(N, origem, objetivo, intermedio).
% Sendo N o numero de discos.

resolva(1,X,Y,_) :- write('Primeiro disco de '), write(X), write(' para '), write(Y), nl.
resolva(N,X,Y,Z) :- N>1, M is N-1, resolva(M,X,Z,Y), resolva(1,X,Y,_), resolva(M,Z,Y,X).
