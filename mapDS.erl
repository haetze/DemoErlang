%%@author Richard Stewing <richy.sting@gmail.com>
%%@date 23, 09, 2019
%%@copyright Richard Stewing
%%@version 0.1
%%@doc 


-module (mapDS).

-export ([update_function/3, new_map/0]).

update_map(F,K,V) ->
    fun(K2) -> 
	    if 
		K =:= K2 -> V;
		true     -> F(K2)
	    end
    end.


new_map() ->
    fun (_) -> {error, key_non_existend}
    end.
