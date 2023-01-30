parent(tom, ann).
parent(tom, pat).
parent(liz, bob).
parent(liz, jim).

% Define the mother relation
mother(M, C) :- female(M), parent(M, C).

% Define the father relation
father(F, C) :- male(F), parent(F, C).

% Define the grandfather relation
grandfather(G, C) :- male(G), parent(G, X), parent(X, C).

% Define the grandmother relation
grandmother(G, C) :- female(G), parent(G, X), parent(X, C).

% Define the sister relation
sister(S, P) :- female(S), parent(X, S), parent(X, P).

% Define the brother relation
brother(B, P) :- male(B), parent(X, B), parent(X, P).


