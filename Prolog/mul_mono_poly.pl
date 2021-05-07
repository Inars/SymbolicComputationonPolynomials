% Multiplication of a polynomial and a monomial
% Please load this file into SWI-Prolog

mul_mono_poly([0|M],P,R) :-  mul_mono_poly(M,[0|P],R).
mul_mono_poly([H|[]],P,R) :- scalarMult(H,P,R).
