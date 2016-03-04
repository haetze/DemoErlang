-module(state).
-export([state/1, startState/1]).


startState(N)->
    spawn(state, state, [N]).


state(N)->
    receive
	{store, NewValue} ->
	    state(NewValue);
	{get, Pid} -> 
	    Pid ! {self(), N},
	    state(N)
    end.

