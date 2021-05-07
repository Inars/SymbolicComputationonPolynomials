% Definition of the zeros function
% Please load this file into SWI-Prolog

zeros(0,[]) :- !.
zeros(N,[0|Z]) :- N1 is N-1, zeros(N1,Z).
