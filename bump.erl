-module (bump).
-export ([bump/1, eq/2, range/2, range/1]).

bump([])-> [];
bump([Head| Tail])-> [Head +1 | bump(Tail) ].

range(N) when N < 0 ->
    range(N, 0);
range(N) -> range(0, N).

range(Low, Low) ->
    [Low];
range(Low, High) when Low > High  -> [];
range(Low, High) -> [Low | range(Low+1, High)]. 


eq(_N, _N) -> true;
eq(_N, _M) -> false. 
