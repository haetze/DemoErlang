-module (bump).
-export ([bump/1, eq/2]).

bump([])-> [];
bump([Head| Tail])-> [Head +1 | bump(Tail) ].


eq(_N, _N) -> true;
eq(_N, _M) -> false. 
