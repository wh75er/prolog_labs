domains
	list = symbol*
	thing = sm(symbol); lst(list)
	

predicates
	is_list(thing).

clauses
	is_list(lst([])).
	is_list(lst([_|T])):- is_list(lst(T)).
		
goal
	is_list(sm(a)).
	
