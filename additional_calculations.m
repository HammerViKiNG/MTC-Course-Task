%% DO NOT CHANGE THIS SCRIPT! \\ НЕ ИЗМЕНЯЙТЕ ДАННЫЙ СКРИПТ %%

% Additional observer parameters \\ Дополнительные параметры наблюдателя

g_2 = n_p;
g_3 = 1 / j;

L_O = 1;
g_O = 1;

b_0 = 1;
b_1 = (L_O * b_0 * g_O + b_0 * g_O) / g_3;
b_2 = (L_O * (g_O * sqrt(2) + 2 * b_1 * b_0 * g_3) + b_1 * b_0 * g_3) / g_2;
b_3 = ( L_O * (g_3 * sqrt(3) + 3 * b_2 * b_1 * b_0 * g_2) + b_2 * b_1 * b_0 * g_2 ) / g_O;

a_3 = b_3;
a_2 = b_3 * b_2;
a_1 = b_3 * b_2 * b_1;
a_0 = b_3 * b_2 * b_1 * b_0;

A_O = [-kappa*a_3, g_2, 0, 0;...
       -kappa^2*a_2, 0, g_3, 0;...
       -kappa^3*a_1, 0, 0, 1;...
       -kappa^4*a_0, 0, 0, 0];
L_O = g_2 * [kappa*a_3; kappa^2*a_2; kappa^3*a_1; kappa^4*a_0];
b_O = [0; 0; overline_b; 0];

% Additional controller parameters // Дополнительные параметры контроллера

poly_K = poly(roots_K);
K = -poly_K(end:-1:2);

% Additional internal model parameters // Дополнительные параметры
% внутренней модели

n_F = length(roots_F);
n_dist_gen = length(roots_dist_gen);

assert(n_F == n_dist_gen, " Size of internal model is not equal to the size of the disturbance generator");

poly_F = poly(roots_F);
poly_dist_gen = poly(roots_dist_gen);

F_n = -poly_F(end:-1:2);
S_n = -poly_dist_gen(end:-1:2);

F = [zeros(n_F - 1, 1), eye(n_F - 1, n_F - 1); F_n];
G = [zeros(n_F - 1, 1); 1];

Gamma = S_n - F_n;