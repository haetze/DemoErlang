%%@author Richard Stewing <richy.sting@gmail.com>
%%@date 20, 02, 2015
%%@copyright Richard Stewing
%%@version 0.1
%%@doc aklsxmakmlxmalsxmalsx


-module (map).

-export ([fuc/1, mapper/2, ring/2]).

%example program 
-spec(fuc(integer()) -> integer()).
fuc(Ob)->
    if 
	is_integer(12/Ob)->
	    Ob;
       	%is_float(12/Ob)->
	   % no;
	true  ->
	    Ob*2

    end.

%self implemented map function
%map:mapper([1,2,3,4,5,6], fun map:fuc/1 ).
-spec(mapper([term()], fun((term()) -> term())) -> [term()]).
mapper([], _) -> 
    [];
mapper([H|T], F) -> 
    [F(H)| mapper(T, F)].
    


ring(PidFrom, 0)->
    PidFrom ! {reachedZero, self()};
ring(PidFrom, N) ->
    io:format("started process ~p with number ~p~n", [self(), N]),
    PidTo = spawn(?MODULE, ring, [self(), N-1]), 
    receive 
	{reachedZero, PidTo} ->
	    PidFrom ! {reachedZero, self()};
	otherwise  -> io:format("error")
    end.

