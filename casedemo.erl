-module(casedemo).
-export([convert/1]).

convert(Day) ->
    case Day of 
	montag -> 1 ;
	dienstag -> 2;
	Other -> {error , unkownDay}

	end.

