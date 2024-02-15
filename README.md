# Best_First_Search

A_Star_for_nodes.pl is a search algorithm implemented in Prolog, specifically, SWI-Prolog. It performs heuristic search (the basic A* algorithm) from a specified start node until the specified goal node is found, at which time, a sequence of nodes (a path) is 'returned'. The algorithm expects as 'input' a graph of nodes with cost information for each edge, and a heuristic measure of estimated cost till the goal. This project provides a very simple graph for testing purposes based on Figure 12.2a from the textbook of Ivan Bratko (2012, 4th edition). The IvanBratko_Fig12.2a.pl program calls A_Star_for_nodes.pl.

## Usage

- Open your (SWI) Prolog interface / command prompt.
- Point the interface to the directory containing the Prolog files: cd('directort/to/PrologPrograms'). (including the full-stop)
- Load the program: consult('IvanBratko_Fig12.2a.pl').
- Run the query:  bestfirst( s, SolutionPath), showsol(SolutionPath). where s is assumed to be the start node.
