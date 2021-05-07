% Expansion of a polynomial u with regard to v
% Please load this file into SWI-Prolog

expansion_poly([0],_,_,[0]).
expansion_poly(U,V,T,G) :-
    division_poly(U,V,[Q,R]),
    expansion_poly(Q,V,T,E),
    mul_poly(T,E,F),
    addition_poly(F,R,G1),
    del_zeros_poly(G1,G).
