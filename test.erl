-module (test).
-export ([fuc/1, map/2, f/0]).

fuc(Ob)->
	if
		(Ob rem 2) == 1 ->
			Ob;
		(Ob rem 2) /= 1->
			0
	end
.

map([], State)->
	State;

map(List,[])->
	[H|List2] = List,
	State = lists:append([], [fuc(H)]),
	map(List2, State);

map(List, State)->
	[H|List2] = List,
	State2 = lists:append(State, [fuc(H)]),
	map(List2, State2).


f()->
    receive 
	{N, P} -> P ! casedemo:convert(N),
		  f()
    end.



	
