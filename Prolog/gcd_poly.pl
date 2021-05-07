% Computes the Greatest Common Diviser of two polynomials
% Please load this file into SWI-Prolog


gcd_poly(A,[0],G) :-
    LC = leading_coeff(A),
    scalarDiv(LC,A,G).
gcd_poly(A,[0.0],G) :-
    LC = leading_coeff(A),
    scalarDiv(LC,A,G).
gcd_poly(A,[],G) :-
    LC = leading_coeff(A),
    scalarDiv(LC,A,G).
gcd_poly(A,B,G) :-
    division_poly(A,B,[_,R]),
    gcd_poly(B,R,G).
