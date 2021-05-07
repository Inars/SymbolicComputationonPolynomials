% Division of a polynomial by an integer
% Please load this file into SWI-Prolog

scalarDiv(_,[],[]) :- !.
scalarDiv(N,[H|T],[K|U]) :- K is H/N, scalarDiv(N,T,U).
