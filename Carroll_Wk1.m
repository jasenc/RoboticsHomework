clc;
%% Question 1
% Part a) - See attached bottom of page 4

% Part b)
x = [2; 1; -3]
y = [-1; 2; -1]
A = [-5 3 0;3 -1 -4;0 -4 2]
x'*A*y
y'*A*x
clear
%% Question 2
% See attached, top of page 4
%% Question 3
% Part a)
syms A M
a = inv(M)*A*M
[V,D] = eig(A)
[V,D] = eig(a) % Yes they have the same eigenvectors
% Part b)
A = [.5 .5; .5 .5]
a = [1 .5; 0 0]
M = [1 0; 1 1]
% Part c) - See attached top of page 5
% Part d)
[V,D] = eig(A)
[V,D] = eig(a)
clear
%% Question 4
syms U S V A
% Part a)
[U,S,V] = svd(A)
A*A'
% Part b)
A = [1 4; 2 8]
[V,D] = eig(A'*A)
[V,D] = eig(A*A')
[U,S,V] = svd(A)
% Part c) - The eigenvectors are different but that of A'*A have the same 
% numbers just in a different pattern with V. U seems to be the eigenvalues
% from A*A' but moved in the same pattern as with the vector of V.
% The eigenvalues are the same.
%% Question 5
% Part a)
























