% Definition of degree_gpe
% Please load this file into SWI-Prolog

degree_gpe([],-1).
degree_gpe([_|T], N) :-
    degree_gpe(T, NT),
    N is NT+1.

