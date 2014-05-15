-module (dist).
-export ([t/1, e/1]).

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
