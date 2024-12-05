
% Question 1: with y* = 1, we have u* = (y*)*R*sqrt(m*g)= 21*sqrt(5)/5
A = [0, 1,0; 19.6,0,-6.26;0,0,-3]; 
B = [0;0;1];
C = [1, 0, 0]; 
D = [0];

% Question 2
eig(A)
% we get: 4.4372, -4.4272, and -3. 
% Since one of the eigenvalues is positive, then we can conclude that the
% linearized system is unstable. Since we are modeling a magnetic
% suspension ball system, we were expecting the model to be stable. 

[b,a] = ss2tf(A, B, C, D)

% the transfer funciton found in the prelab is -6.26/(s^3+3*s^2+19.6*s+58.8).
% The parameter b is equal to -6.26 which is equal to our numerator. The
% matrix a is equal to [1, 3, -19.6, -58.8]. These parameters correspond to
% the coefficients in out denominator. 

% Question 3
[sizes, x0, states]=magball
% we get that states = [y; y_dot; i]. The ordering of these states
% corresponds with the ordering of states used by Simulink. 

x_star = [1; 0; 3.13]; 
u_star = 21*sqrt(5)/5; 

[A_new,B_new,C_new,D_new]=linmod("magball", x_star, u_star)
% We get: 
% A_new = [0,1,0; 19.5938,0,-6.26; 0,0,-3]
% B_new = [0; 0; 1]
% C_new = [1,0,0]
% D_new = 0
% These matrices correspond to the matrices that we have in question 1. 

% Question 4
sys = ss(A_new,B_new,C_new,D_new); 
impulse(sys, 2)
% The plot that we get is similar to the graph from our pre-lab. Both plots
% dip down at 0.3 seconds. 

% Question 5a
step(sys, 2)







