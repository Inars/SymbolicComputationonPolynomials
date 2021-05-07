% Creation of a monomial from a coeff of a polynomial
% Please load this file into SWI-Prolog

create_mono(P,N,M) :- zeros(N,Z), coeff_gpe(P,N,H), append(Z,[H|[]],M).
