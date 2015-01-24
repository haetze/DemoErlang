-module(demo).
-export([double/1, add/2, double/2]).

double(X, Y)->
	{times(X,2),times(Y,2)}.
double(Value)->
	times(Value, 2).
times(X, Y)->
	X*Y.

add(X, Y) ->
	X+Y.
