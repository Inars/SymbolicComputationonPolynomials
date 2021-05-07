% Multiplication of two polynomials
% Please load this file into SWI-Prolog

mul_poly_rlist(P,Q,C,[B]) :-
    create_mono(Q,C,M),
    degree_gpe(Q,D),
    degree_gpe(M,D),
    mul_mono_poly(M,P,B).
mul_poly_rlist(P,Q,C,[A|S]) :-
    create_mono(Q,C,M),
    mul_mono_poly(M,P,A),
    C1 is C+1,
    mul_poly_rlist(P,Q,C1,S).

add_poly_list([R],R) :-
    !.
add_poly_list([A,B|T],R) :-
    addition_poly(A,B,C), add_poly_list([C|T],R).

mul_poly(P,Q,R) :-
    mul_poly_rlist(P,Q,0,L),
    add_poly_list(L,R).
