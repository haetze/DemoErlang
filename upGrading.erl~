%upgrade Example
%Richard Stewing, 15.5.2014

-module(upGrading).
-export([start/1, rec/0, sen/1, sen/2]).
-vsn(1.1).

-spec(start( integer() ) -> integer()).
start(N)->
	N+1.
-spec( rec() -> ok).
rec()-> 
	receive
		_ -> io:format("qqqqqq")
	end,
	rec(),
	ok.

-spec(sen(pid()) -> ok).
sen(Pid)->
	sen(0, Pid).
-spec(sen(integer(), pid()) -> ok).
sen(10000000, Pid)->
	Pid ! 10,
	sen(0, Pid);
sen(N, Pid)->
	sen(N+1, Pid),
	ok.




