user(ahmed, 1234).
user(sara, 5678).
user(omar, 1111).
user(lina, 2222).

login :- attempt(1).

attempt(N) :-
    N > 3,
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.

attempt(N) :-
    N =< 3,
    write('Username: '), read(U),
    write('Password: '), read(P),
    check(U, P, N).

check(U, P, _) :-
    user(U, P),
    write('Login Successful'), nl.

check(U, P, N) :-
    \+ user(U, P),
    write('Login Unsuccessful'), nl,
    N1 is N + 1,
    attempt(N1).
