domains
	name, surname = symbol
	number, id, year, amount, cost, cost = integer
	city, street = symbol
	house = integer
	address = address(city, street, house)
	property = account_id(integer); vehicle_name(symbol)
predicates
	catalog(name, surname, address, number)
	vehicle(name, year, cost)
	account(id, amount)
	owner(name, property)
clauses
	catalog(maxim, karsakov, address(moscow, lesnaya, 16), 888888).
	catalog(marsel, gulaya, address(moscow, shyuka, 69), 135163).
	catalog(phil, ispolatov, address(voronezh, center, 1), 111111).
	catalog(niko, jakovidis, address(greece, preobraga, 65), 163461).
	catalog(nataly, razh, address(moscow, aptekorskaya, 72), 274572).
	catalog(rushik, unknown, address(greece, preobraga, 4), 134727).
	catalog(andrey, kisel, address(moscow, meteor, 84), 645745).
	catalog(yula, plaksina, address(moscow, bmstu, 77), 777777).
	vehicle(ferrari, 2014, 100000).
	vehicle(mitsubishi, 2009, 70000).
	vehicle(tank, 1980, 1000000).
	vehicle(ship, 1990, 9000000).
	vehicle(airplane, 2007, 435000).
	account(1, 700000).
	account(2, 8500).
	account(3, 10000000).
	account(4, 2000000).
	account(5, 3000000).
	owner(yula, vehicle_name(ferrari)).
	owner(marsel, account_id(3)).
goal
	catalog(phil, ispolatov, Adr, _).
	%catalog(phil, ispolatov, ADR, _).
	%owner(Name, Subj
	%catalog(Name, plaksina, Address, Number).
