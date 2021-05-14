homem(leimig).
homem(lucas).
homem(gustavo).
homem(guilherme).
homem(adolpho).
homem(antonio).
homem(guido).
homem(vicente).
homem(petronio).
homem(fernando).
homem(ze).
homem(joao).
homem(luis).

mulher(leticia).
mulher(lorena).
mulher(lygia).
mulher(manuela).
mulher(ecila).
mulher(rafaela).
mulher(bruna).
mulher(carol).
mulher(bia).
mulher(antonia).

progenitor(leimig,gustavo).
progenitor(leimig,lucas).
progenitor(leimig,leticia).
progenitor(guido,lorena).
progenitor(guido,petronio).
progenitor(guido,vicente).
progenitor(antonio,manuela).
progenitor(antonio,adolpho).
progenitor(antonio,guilherme).
progenitor(antonio,leimig).
progenitor(lorena,lucas).
progenitor(lorena,gustavo).
progenitor(lorena,leticia).
progenitor(lygia,lorena).
progenitor(lygia,petronio).
progenitor(lygia,vicente).
progenitor(ecila,manuela).
progenitor(ecila,adolpho).
progenitor(ecila,guilherme).
progenitor(ecila,leimig).
progenitor(petronio,rafaela).
progenitor(petronio,bruna).
progenitor(petronio,carol).
progenitor(vicente,fernando).
progenitor(guilherme,ze).
progenitor(guilherme,bia).
progenitor(adolpho,joao).
progenitor(adolpho,luis).
progenitor(manuela,antonia).


/* Regras */

 pai(X,Y) :- homem(X), progenitor(X,Y).
 mae(X,Y) :- mulher(X), progenitor(X,Y).

 avoo(X,Y) :- homem(X), progenitor(X,Z), progenitor(Z,Y).
 avoa(X,Y) :- mulher(X), progenitor(X,Z), progenitor(Z,Y).

 irmao(X,Y) :- homem(X), progenitor(Z,X), progenitor(Z,Y), X\=Y.
 irma(X,Y) :- mulher(X), progenitor(Z,X), progenitor(Z,Y), X\=Y.

 tio(X,Y) :- homem(X), irmao(X,Z), progenitor(Z,Y).
 tia(X,Y) :- mulher(X), irma(X,Z), progenitor(Z,Y).
 
 filho(X,Y) :- homem(X), progenitor(Y,X).
 filha(X,Y) :- mulher(X), progenitor(Y,X).

 neto(X,Y) :- homem(X), progenitor(Z,X), progenitor(Y,Z).
 neta(X,Y) :- mulher(X), progenitor(Z,X), progenitor(Y,Z).

 primo(X,Y) :- homem(X), avoo(Z,X), avoo(Z,Y), X\=Y.
 prima(X,Y) :- mulher(X), avoo(Z,X), avoo(Z,Y), X\=Y.
















































 












