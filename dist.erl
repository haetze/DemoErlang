-module (dist).
-export ([t/2, put/0]).


put()-> 
	List = spawn(dist, put, []),
	t(List, self()),
	receive 
		Fr -> io:format("~w  has send a message~n", [Fr]);
		_-> unknowenMessageTyp
	end,
	List.



t(To, Fr)-> To ! Fr.

