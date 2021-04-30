-module(filter).

-export([filter/2]).


% filter:filter([1,2,3,4,5], fun(X) -> X > 2 end).
filter([], _) ->
    [];
filter([H|T], Pred) -> 
    case Pred(H) of
	true  -> [H|filter(T,Pred)];
	false -> filter(T,Pred)
    end.


