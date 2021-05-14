somatorio_lista([], [], []).
somatorio_lista([H1|T1], [H2|T2], [X|L3]) :- somatorio_lista(T1, T2, L3), X is H1 + H2.
