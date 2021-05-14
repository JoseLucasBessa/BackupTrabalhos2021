is_valid(PocaoList) :- 
    permutation([afrente, volta, vinho, vinho, veneno, veneno, veneno], PocaoList).
%dica 1
dica1([veneno, vinho|Resto]) :-
    dica1(Resto).
dica1([Pocao|Resto]) :- 
    Pocao \= vinho,
    dica1(Resto).
dica1([]).

%%dica 2
dica2([Primeira|Resto]) :-
    append(_,[Ultima], Resto),
    Primeira \= Ultima,
    Primeira \= afrente,
    Ultima \= afrente.

maior(5).
menor(2).

%%%dica 3
dica3(List) :- 
    maior(NumeroMaior),
    menor(NumeroMenor),
    nth0(NumeroMaior, List, MaiorPocao),
    nth0(NumeroMenor, List, MenorPocao),
    MaiorPocao \= veneno,
    MenorPocao \= veneno.

%%%% dica 4
dica4(List) :- 
    nth1(2, List, SegundaPocao),
    nth1(6, List, SextaPocao),
    SegundaPocao = SextaPocao.

solucao(Pocao) :-
    is_valid(Pocao),
    dica1(Pocao),
    dica2(Pocao),
    dica3(Pocao),
    dica4(Pocao).
