% Definition of coeff_gpe
% Please load this file into SWI-Prolog

coeff_gpe([H|_], 0, H) :- !.
coeff_gpe([_|T], N, C) :- NT is N-1, coeff_gpe(T, NT, C), !.
