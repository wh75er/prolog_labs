human( tom).
human( pam).
human( jim).
human( carol).
human( anton).
human( will).
human( ash).

organization( stateDep).
organization( cityShop).

male( tom).
male( jim).
male( anton).
male( will).

female( pam).
female( carol).
female( ash).

homephone( phone1).
homephone( phone4).
homephone( phone5).
homephone( phone7).
homephone( phone8).
homephone( phone9).
homephone( phone10).

mobphone( phone3).
mobphone( phone2).
mobphone( phone6).
mobphone( phone11).

specialPhone( phone911).
specialPhone( phone01).
specialPhone( phone02).
specialPhone( phone03).

phonenumber( tom, phone1).
phonenumber( pam, phone2).
phonenumber( jim, phone3).
phonenumber( jim, phone9).
phonenumber( carol, phone4).
phonenumber( anton, phone5).
phonenumber( will, phone6).
phonenumber( ash, phone7).
phonenumber( ash, phone11).

phonenumber( stateDep, phone911).
phonenumber( stateDep, phone01).
phonenumber( stateDep, phone02).
phonenumber( stateDep, phone03).

phonenumber( cityShop, phone8).


isStateNumber( Phone) :-
    phonenumber( stateDep, Phone).

isHumanNumber( Phone) :-
    phonenumber( X, Phone),
    human(X).

isOrganizationNumber( Phone) :-
    phonenumber(X, Phone),
    organization(X).

hasMobilePhoneAndMale( Name) :-
    mobphone( Phone),
    phonenumber( Name, Phone),
    male( Name).

hasMobilePhoneAndFemale( Name) :-
    mobphone( Phone),
    phonenumber( Name, Phone),
    female( Name).

hasMobilePhone( Name) :-
    mobphone( Phone),
    phonenumber( Name, Phone).

hasHomePhone( Name) :-
    homephone( Phone),
    phonenumber( Name, Phone).

hasMobileAndHomePhone( Name) :-
    hasHomePhone( Name),
    hasMobilePhone( Name).
    
