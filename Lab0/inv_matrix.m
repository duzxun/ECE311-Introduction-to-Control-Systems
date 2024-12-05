n = 500; %dimensions of the matrix
Q = orth(randn(n,n));
d = logspace(0,-10,n);
A = Q*diag(d)*Q';
x = randn(n,1); % the solution of the equation, known to compare methods
b = A*x;
tic, y = inv(A)*b; toc % solve equation with inv and time
err_inv = norm(y-x) % compute error
res_inv = norm(A*y-b)
pause
tic, z = A\b; toc % solve equation with mldivide and time
err_ml = norm(z-x) % compute error
res_m = norm(A*z-b)

