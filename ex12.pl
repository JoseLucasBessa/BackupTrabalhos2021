:- use_rendering(table,
		 [header(h('Dono', 'Animal', 'Cigarro', 'Bebida', 'Cor'))]).

dono_da_zebra(Dono) :-
	goal(Hs),
	member(h(Dono,zebra,_,_,_), Hs).

bebe_agua(Bebedor) :-
	goal(Hs),
	member(h(Bebedor,_,_,agua,_), Hs).


goal(Hs) :-
	length(Hs, 5),                                            %  1
	member(h(ingles,_,_,_,vermelho), Hs),                         %  2
	member(h(espanhol,cachorro,_,_,_), Hs),                         %  3
	member(h(_,_,_,cafe,verde), Hs),                        %  4
	member(h(ucraniano,_,_,cha,_), Hs),                       %  5
	proximo(h(_,_,_,_,verde), h(_,_,_,_,branco), Hs),             %  6
	member(h(_,cobra,winston,_,_), Hs),                       %  7
	member(h(_,_,kool,_,amarelo), Hs),                         %  8
	Hs = [_,_,h(_,_,_,leite,_),_,_],                           %  9
	Hs = [h(noruegues,_,_,_,_)|_],                            % 10
	proximo(h(_,raposa,_,_,_), h(_,_,chesterfield,_,_), Hs),        % 11
	proximo(h(_,_,kool,_,_), h(_,cavalo,_,_,_), Hs),              % 12
	member(h(_,_,lucky,suco,_), Hs),                         % 13
	member(h(japones,_,kent,_,_), Hs),                       % 14
	proximo(h(noruegues,_,_,_,_), h(_,_,_,_,azul), Hs),          % 15
	member(h(_,_,_,agua,_), Hs),		% one of them drinks water
	member(h(_,zebra,_,_,_), Hs).		% one of them owns a zebra

proximo(A, B, Ls) :- append(_, [A,B|_], Ls).
proximo(A, B, Ls) :- append(_, [B,A|_], Ls).


