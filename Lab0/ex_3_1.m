A = randn(4, 4);
X = randn(4, 4);
B = A * X;

% using inv
X_inv = inv(A) * B;
err_inv = norm(X_inv-X) % compute error
res_inv = norm(A * X_inv - B)

% using mrdivide
B_t = transpose(X) * transpose(A);
X_t = transpose(A)/B_t;
X_mr = transpose(X_t);
err_mr = norm(X_mr - X) % compute error
res_mr = norm(A * X_mr - B)

% using mldivide
X_ml = A\B;
err_ml = norm(X_ml-X) % compute error
res_ml = norm(A * X_ml - B)

% as we can see from the results, mrdivide 
% is much less accurate than mldivide and 
% the inv methods.