% Definition of leading_coeff
% Please load this file into SWI-Prolog

leading_coeff(T,A) :-
    degree_gpe(T,N),
    coeff_gpe(T,N,A).
