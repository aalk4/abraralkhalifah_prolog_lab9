%Task 1 - Boolean Expression
%(A ∧ B) ∨ (¬A ∧ ¬B)

and(true, true, true).
and(true, false, false).
and(false, true, false).
and(false, false, false).

or(true, true, true).
or(true, false, true).
or(false, true, true).
or(false, false, false).

neg(true, false).
neg(false, true).

boolean(A, B, R) :-
    and(A, B, X),
    neg(A, NotA),
    neg(B, NotB),
    and(NotA, NotB, Y),
    or(X, Y, R).
