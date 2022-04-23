-module(queen_attack).

-export([can_attack/2]).

can_attack({WX, _WY}, {BX, _BY}) when WX =:= BX ->
    true;
can_attack({_WX, WY}, {_BX, BY}) when WY =:= BY ->
    true;
can_attack({WX, WY}, {BX, BY}) when abs(WX - BX) =:= abs(WY - BY) ->
    true;
can_attack(_, _) ->
    false.
