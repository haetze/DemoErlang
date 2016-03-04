%small module store/receive state
%creates a new process for every peace of state
-module(state).

-export([startState/1]).

%entry point 
%creates the thread
startState(N)->
    spawn(state, state, [N]).


%state loop
%handles the state requests 
state(N)->
    receive
	{store, NewValue} ->
	    state(NewValue);
	{get, Pid} -> 
	    Pid ! {self(), N},
	    state(N)
    end.

