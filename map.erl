-module (test).
-export ([fuc/1]).

fuc(Ob)->
if 
	is_integer(12/Ob)->
		Ob;
	is_float(12/Ob)->
		no

end.
