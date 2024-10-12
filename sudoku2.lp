% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
%Easily edited constraint definitions
row(1..9).
col(1..9).
value(1..9).
sub(3).

%Gives every cell one value from V as long as its empty
{ sudoku(X, Y, V) : value(V) } = 1 :- row(X), col(Y), not initial(X, Y, _).

%Sets the initial values
sudoku(X, Y, V) :- initial(X, Y, V).

%Ensures row values are unique
:- sudoku(X, Y, V), sudoku(X, Y', V), Y != Y'.

%Ensures column values are unique
:- sudoku(X, Y, V), sudoku(X', Y, V), X != X'.

%Maps each (x,y) coordinate to a subgrid
subgrid(X, Y, 1+(((X-1)/S)*S+(Y-1)/S)) :- sub(S), row(X), row(Y).

%Ensures subgrid values are unique
:- subgrid(X, Y, G), subgrid(X', Y', G), sudoku(X, Y, V), sudoku(X', Y', V), X != X', Y != Y'.

#show sudoku/3.