-module(rna_transcription).

-export([to_rna/1]).

to_rna(Strand) ->
    lists:concat([convert([X]) || X <- Strand]).

convert(X) ->
    case X of
        "G" -> "C";
        "C" -> "G";
        "T" -> "A";
        "A" -> "U"
    end.

