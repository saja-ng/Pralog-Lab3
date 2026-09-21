% Family members
male(ahmed).
male(omar).
male(khalid).

female(fatima).
female(sara).
female(nora).

% Parent relationships
parent(ahmed, omar).
parent(fatima, omar).

parent(ahmed, sara).
parent(fatima, sara).

parent(ahmed, nora).
parent(fatima, nora).

parent(omar, khalid).

% Rules
father(X, Y) :-
    male(X),
    parent(X, Y).

mother(X, Y) :-
    female(X),
    parent(X, Y).

brother(X, Y) :-
    male(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.

sister(X, Y) :-
    female(X),
    parent(P, X),
    parent(P, Y),
    X \= Y.
