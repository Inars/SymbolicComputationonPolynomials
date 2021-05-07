% Addition of two polynomials
% Please load this file into SWI-Prolog

addition_poly([],[],[]) :-
    !.
addition_poly(P, [], P) :-
    !.
addition_poly([], P, P) :-
    !.
addition_poly([H|P], [K|Q], [A|R]) :-
    A is H+K,
    addition_poly(P,Q,R).
