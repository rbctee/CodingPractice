-module(darts).

-export([score/2]).


score(X, Y) ->
    Diagonal = math:sqrt(math:pow(X, 2) + math:pow(Y, 2)),
    score(Diagonal).

score(Z) when Z =< 1 ->
    10;
score(Z) when Z =< 5 ->
    5;
score(Z) when Z =< 10 ->
    1;
score(_Z) ->
    0.

