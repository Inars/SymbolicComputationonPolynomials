% Creation of a monomial from scracth
% Please load this file into SWI-Prolog

create_mono_v2(C,D,M) :- zeros(D,Z), append(Z,[C],M).
