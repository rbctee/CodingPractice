-module(hamming).

-export([distance/2]).

distance(Strand1, Strand2) when length(Strand1) =:= length(Strand2) ->
    distance(Strand1, Strand2, 0);
distance(_, _) ->
    {error, "left and right strands must be of equal length"}.

distance([Head1 | Rest1], [Head2 | Rest2], Counter) when Head1 =/= Head2 ->
    distance(Rest1, Rest2, Counter + 1);
distance([_ | Rest1], [_ | Rest2], Counter) ->
    distance(Rest1, Rest2, Counter);
distance([], [], Counter) ->
    Counter.

