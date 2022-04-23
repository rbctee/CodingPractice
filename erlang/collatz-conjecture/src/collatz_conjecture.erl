-module(collatz_conjecture).

-export([steps/1]).

steps(N) when is_number(N) andalso N > 0 ->
    steps(N, 0);
steps(_) ->
    error(badarg).

steps(N, Counter) when N rem 2 =:= 0 ->
    steps(N div 2, Counter + 1);
steps(N, Counter) when N =/= 1 ->
    steps(N * 3 + 1, Counter + 1);
steps(1, Counter) ->
    Counter.
