-module (listEx).
-export ([listCre/2]).


listCre(0, Tu) ->
if
	tuple_size(Tu) == 0 ->
			{};
	tuple_size(Tu) /= 0 ->
		 erlang:append_element(Tu, 0)
	
end;

listCre(N, Tu) when N>0 ->
	listCre(N-1, erlang:append_element(Tu, N)).
