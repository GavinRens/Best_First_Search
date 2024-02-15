:- include('A_Star_for_nodes.pl').


% s(N, M, C).  Node N has successor M with arc cost C
% From Figure 12.2a of Ivan Bratko, 2012

s(s, a, 2).
s(s, e, 2).
s(a, b, 2).
s(b, c, 2).
s(c, d, 3).
s(d, t, 3).
s(e, f, 5).
s(f, g, 2). % s(f, g, 4). causes other path to be best
s(g, t, 2).


% h(N, H). H is the estimated cost from N to the goal
% Heuristic estimate h is the stait-line distance to the

h(a, 5).
h(b, 4).
h(c, 4).
h(d, 3).
h(e, 7).
h(f, 4).
h(g, 2).
h(t, 0). % REMEMBER THIS FACT, ELSE ALGO DOES NOT WORK


goal(t).


% Display a solution path as a list of board positions

showsol( [ ]).
showsol( [P | L]) :-
	showsol( L),
	nl, write('--- '),
	write( P).


% An example query using best first: ?- bestfirst( s, Sol), showsol(Sol).
