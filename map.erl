%%@author Richard Stewing <richy.sting@gmail.com>
%%@date 20, 02, 2015
%%@copyright Richard Stewing
%%@version 0.1
%%@doc aklsxmakmlxmalsxmalsx


-module (map).

-export ([fuc/1, mapper/2]).

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
-spec(mapper([term()], fun((term()) -> term())) -> [term()]).
mapper([], _) -> 
    [];
mapper([H|T], F) -> 
    [F(H)| mapper(T, F)].
    
