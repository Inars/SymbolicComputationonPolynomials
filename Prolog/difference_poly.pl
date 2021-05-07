% Addition of two polynomials
% Please load this file into SWI-Prolog

difference_poly([],[],[]) :-
    !.
difference_poly(P, [], P) :-
    !.
difference_poly([], P, R) :-
    scalarMult(-1,P,R),
    !.
difference_poly([H|P], [K|Q], [A|R]) :-
    A is H-K,
    difference_poly(P,Q,R).
