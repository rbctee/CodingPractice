-module(raindrops).

-export([convert/1]).

convert(N) when N > 0 ->
    Sounds = [get_sound(X) || X <- [3,5,7], N rem X =:= 0],
    raindrops(N, Sounds).

raindrops(N, []) ->
    integer_to_list(N);
raindrops(_N, List) ->
    lists:concat(List).

get_sound(3) ->
    "Pling";
get_sound(5) ->
    "Plang";
get_sound(7) ->
    "Plong".
