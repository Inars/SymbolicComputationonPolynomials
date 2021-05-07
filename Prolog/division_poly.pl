% Division of two polynomials
% Please load this file into SWI-Prolog

division_poly_v1(R,V,Q,[Q,R]) :-
    degree_gpe(R,M),
    degree_gpe(V,N),
    M < N.

division_poly_v1(U,V,Q,[QF,RF]) :-
    leading_coeff(U,LCU),
    leading_coeff(V,LCV),
    S is LCU/LCV,
    degree_gpe(U,M),
    degree_gpe(V,N),
    MN is M-N,
    create_mono_v2(S,MN,MQ),
    addition_poly(Q,MQ,PQ1),
    del_zeros_poly(PQ1,PQ),
    create_mono_v2(LCU,M,A),
    difference_poly(U,A,B),
    create_mono_v2(LCV,N,C),
    difference_poly(V,C,D),
    mul_mono_poly(MQ,D,E),
    difference_poly(B,E,R1),
    del_zeros_poly(R1,R),
    division_poly_v1(R,V,PQ,[QF,RF]).

division_poly(U,V,[Q,R]) :-
    division_poly_v1(U,V,[0],[Q,R]).
