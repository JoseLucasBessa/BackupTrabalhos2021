man(john).
man(fred).
man(harry).

woman(mary).
woman(julie).
woman(susan).
woman(anne).

is_blonde(john).
is_blonde(julie).
is_blonde(susan).

is_brunnete(fred).
is_brunnete(harry).
is_brunnete(mary).
is_brunnete(anne).

is_rich(fred).
is_rich(julie).

likes_rich(john).
likes_rich(harry).
likes_rich(julie).

likes_blonde(john).

likes_brunnete(fred).
likes_brunnete(mary).
likes_brunnete(julie).


john_likes(X) :- is_rich(X), is_blonde(X), woman(X).
mary_likes(X) :- is_brunnete(X), man(X).
julie_likes(X) :- is_brunnete(X), is_rich(X), man(X).
fred_likes(X) :- woman(X), is_brunnete(X).
harry_likes(X) :- woman(X), is_rich(X).
susan_likes(X) :- man(X).
anne_likes(X) :- man(X).

/* couple(X, Y) :- (man(X), woman(Y); woman(X), man(Y)), (is_rich(X), likes_rich(Y) ; is_rich(Y), likes_rich(X)), ((is_brunnete(X), likes_brunnete(Y) ; is_brunnete(Y) ,likes_brunnete(X)); (is_blonde(X), likes_blonde(Y) ; is_blonde(Y), likes_blonde(X))).*/

possible_couple(X, Y) :- X = fred, Y = mary.
possible_couple(X, Y) :- X = fred, Y = anne.


