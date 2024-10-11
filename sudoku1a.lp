
% Sudoku Solver

% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
size(4).
value(1..4).

% Ensure every cell (X, Y) has exactly one value V, either from the initial values or chosen by the solver
1 { sudoku(X, Y, V) : value(V) } 1 :- size(S), X = 1..S, Y = 1..S, not initial(X, Y, _).

% Fix cells that have an initial value
sudoku(X, Y, V) :- initial(X, Y, V).

% Row constraint: values in each row must be unique
:- sudoku(X, Y, V), sudoku(X, Y', V), Y != Y'.

% Column constraint: values in each column must be unique
:- sudoku(X, Y, V), sudoku(X', Y, V), X != X'.



#show sudoku/3.