square_area(S, A) :- A is S * S.
square_perimeter(S, P) :- P is 4 * S.

rectangle_area(W, H, A) :- A is W * H.
rectangle_perimeter(W, H, P) :- P is 2 * (W + H).

triangle_area(B, H, A) :- A is 0.5 * B * H.
triangle_perimeter(X, Y, Z, P) :- P is X + Y + Z.

square :-
    write('Enter the side: '), read(S),
    square_area(S, A), square_perimeter(S, P),
    write('Area = '), write(A), nl,
    write('Perimeter = '), write(P), nl.

rectangle :-
    write('Enter the width: '), read(W),
    write('Enter the height: '), read(H),
    rectangle_area(W, H, A), rectangle_perimeter(W, H, P),
    write('Area = '), write(A), nl,
    write('Perimeter = '), write(P), nl.

triangle :-
    write('Enter the base: '), read(B),
    write('Enter the vertical height: '), read(H),
    write('Enter side a: '), read(X),
    write('Enter side b: '), read(Y),
    write('Enter side c: '), read(Z),
    triangle_area(B, H, A), triangle_perimeter(X, Y, Z, P),
    write('Area = '), write(A), nl,
    write('Perimeter = '), write(P), nl.
