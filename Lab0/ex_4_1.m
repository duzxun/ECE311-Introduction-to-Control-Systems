A = [0, 1; -4, -2];
B = [0; 4];
C = [1, 0];
D = [0];

% 1. create the sys obj corresponding to the second order system described
sys = ss(A, B, C, D);

% 2. response of the system due to a step input
[Y2, T2, X2] = step(sys);
plot(T2, X2)

% 3. state response to a given initial condition and zero input
x0 = [0; 1];
[Y3, T3, X3] = initial(sys, x0);
plot(T3, X3)

% 4. state response to given initial condition and sinusoidal input
t = 0:0.01:20;
u = sin(t);
[Y4, t, X4] = lsim(sys, u, t, x0);
plot(t, X4)

% 5. transfer function from state space description
[b, a] = ss2tf(A, B, C, D)
% yes, this function returns the correct coefficients as compared to
% the transfer function described in equation 9 of the lab0 document.













