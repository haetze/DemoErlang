-module (dist).
-export ([t/1, e/1, rec/1]).
-vsn(1.4).

%
%put()-> 
%	List = spawn(dist, put, []),
%	t(List, self()),
%	receive 
%		Fr -> io:format("~w  has send a message~n", [Fr]);
%		_-> unknowenMessageTyp
%	end,
%	List.
%


t(From)-> From ! node().

e(T) -> T ! 133.

rec(T) ->
	receive
		_ -> io:format("~w",[T] ),
		     print()
	end,
	dist:rec(T).


print()->io:format("\nok\n").
