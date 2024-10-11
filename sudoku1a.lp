
% Sudoku Solver

% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
size(4).
value(1..4).
1 { sudoku(X, Y, V) : value(V) } 1 :- size(S), X = 1..S, Y = 1..S.
:- sudoku(X, Y1, V), sudoku(X, Y2, V), Y1 != Y2.
:- sudoku(X1, C, V), sudoku(X2, C, V), X1 != X2.



#show sudoku/3.