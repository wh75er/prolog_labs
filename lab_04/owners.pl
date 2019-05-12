/* Owners prolog dataset */

domains
    month, name, surname = string.
    day, year = unsigned.

    date_full = date(month, day, year).
    name_full  = person(name, surname).

predicates
    birthday(person, date).
    parent(person, person).

clauses
    birthday(person("John", "Wick"), date("Apr", 14, 1998)).
    birthday(person("Lilly", "Bayers"), date("Apr", 14, 1996)).
    birthday(person("Tom", "Redfield"), date"Apr", 14, 2019)).
    parent(person("John", "Wick"), person("Tom", "Redfield")).
    parent(person("Lilly", "Bayers"), person("Tom", "Redfield")).
