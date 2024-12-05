% Question 1
A=[7,2,-3; 4,6,-4; 5,2,-1];
[V, D] = eig(A) 

% The eigenvealues of A are D=[2,0,0;0,6,0;0,0,4] and the eigenvectors are
% V = [0.267, 0.577, 0.707; 0.535, 0.577, 0; 0.802, 0.577, 0.707].

% Question 2
characteristic = poly(A); 
sols = roots(characteristic)

% the solutions of sols give us the same values as the values in matrix D,
% which is accurate since matrix D is the eigenvalues matrix. 

% Question 3 
format LONG; 
one_matrix_equation = norm(A*V-V*D) 

% We get that one_matrix_equation = 2.453379040363149e-15. 
% When we calacute by hand, we get that D = [2,0,0; 0,4,0;0,0,6], and that
% the corresponding eigenvectors are V = [1/3, 1, 1; 2/3, 0, 1; 1, 1, 1].
% The matrix multiplication A*V yields [2/3, 4, 6; 4/3, 0,6; 2, 4, 6].
% The matrix multiplication V*D yielded the same result. Hence, the
% equation A*V-V*D = 0 is satisfied. 

% Question 4 
is_a_diagonalizable = inv(V)*A*V 

% A is a 3x3 matrix diagonalizable because it has 3 distinct eigenvalues. Also,
% when we compute the is_a_diagonalizable matrix, we get a matrix that is
% equal to the D matrix. 

% Question 5 
% The eigenvector associated with the new matrix A is (1,0). 
A_new=[1,1; 0,1];
[V_new, D_new] = eig(A_new) 

% When we run the code above, we get that V_new =[1,-1; 0,0]. The matrix
% multiplication A*V yields the matrix [1,-1;0,0]. However, the matrix
% multiplication V*D (with D =[1,0;0,0]), yields the matrix [1,0;0,0].
% Hence, in this case, A*V is not equal to V*D. The matrix V is NOT
% invertible because its determinant is equal to zero.

% Question 6 
A_six = [0,4,3;0,20,16;0,-25,-20];
J = jordan(A_six)

%the jordan form of the matrrix is J=[0,1,0;0,0,1;0,0,0]. 
