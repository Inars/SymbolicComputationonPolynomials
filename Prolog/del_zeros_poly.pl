% Deleting the unnecessary zeros from a polynomial
% Please load this file into SWI-Prolog

lead_zeros([],[]).
lead_zeros([H|P],[H|P]) :-
    dif(H,0),
    dif(H,0.0).
lead_zeros([0|P],R) :-
    lead_zeros(P,R).
lead_zeros([0.0|P],R) :-
    lead_zeros(P,R).


del_zeros_poly(P,R) :-
    reverse(P,Q),
    lead_zeros(Q,S),
    reverse(S,R).

