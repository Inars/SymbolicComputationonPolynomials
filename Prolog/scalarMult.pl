% Multiplication of a polynomial by an integer
% Please load this file into SWI-Prolog

scalarMult(_,[],[]) :- !.
scalarMult(N,[H|T],[K|U]) :- K is N*H, scalarMult(N,T,U).
