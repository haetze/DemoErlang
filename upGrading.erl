%upgrade Example
%Richard Stewing, 15.5.2014

-module(upGrading).
-export([start/1, rec/0, sen/1, sen/2]).
-vsn(1.1).

start(N)->
	N+1.
rec()-> 
	receive
		_ -> io:format("qqqqqq")
	end,
	rec().

sen(Pid)->
	sen(0, Pid).
sen(10000000, Pid)->
	Pid ! 10,
	sen(0, Pid);
sen(N, Pid)->
	sen(N+1, Pid).




