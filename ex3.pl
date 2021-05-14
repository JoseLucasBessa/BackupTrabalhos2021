%função para dar a soma de uma lista

somatorio([],0).

somatorio([Cabeça|Cauda], Soma) :- somatorio(Cauda, SomaResto) , Soma is Cabeça + SomaResto . 

%somatorio(+lista, -soma)/2
