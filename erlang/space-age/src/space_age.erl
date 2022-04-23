-module(space_age).

-export([age/2]).


age(Planet, Seconds) ->
    EarthYearSeconds = 31557600,
    case Planet of
        mercury -> calculate_age(Seconds, EarthYearSeconds * 0.2408467);
        venus -> calculate_age(Seconds, EarthYearSeconds * 0.61519726);
        earth -> calculate_age(Seconds, EarthYearSeconds);
        mars -> calculate_age(Seconds, EarthYearSeconds * 1.8808158);
        jupiter -> calculate_age(Seconds, EarthYearSeconds * 11.862615);
        saturn -> calculate_age(Seconds, EarthYearSeconds * 29.447498);
        uranus -> calculate_age(Seconds, EarthYearSeconds * 84.016846);
        neptune -> calculate_age(Seconds, EarthYearSeconds * 164.79132)
    end.

calculate_age(Seconds, Divisor) ->
    Seconds / Divisor.
