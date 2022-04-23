-module(bob).

-export([response/1]).

response(String) ->
    case ask_bob(string:trim(String)) of
        polite_question -> "Sure.";
        rude_question -> "Calm down, I know what I'm doing!";
        yell -> "Whoa, chill out!";
        silence -> "Fine. Be that way!";
        unknown -> "Whatever."
    end.

ask_bob(String) when length(String) =:= 0 ->
    silence;
ask_bob(String) ->
    IsQuestion = lists:last(String) =:= 63,
    ContainsLowercase = length([X || X <- String, X >= 97, X =< 122]) > 0,
    ContainsLetters = length([X || X <- String, (X >= 97 andalso X =< 122) or (X >= 65 andalso X =< 90)]) > 0,

    if IsQuestion andalso (ContainsLowercase or not ContainsLetters) -> polite_question;
        IsQuestion -> rude_question;
        not ContainsLowercase andalso ContainsLetters -> yell;
        true -> unknown
    end.

