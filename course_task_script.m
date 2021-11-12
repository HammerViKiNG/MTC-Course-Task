% PMSM motor parameters // Параметры СДПМ

L = 20e-3;          
R = 7.2;            
j = 0.55367e-4;          
n_p = 8;               
lambda_m = 0.06;   
B = 0.006;                

i_0 = [0; 0]; % 1, -2
omega_0 = 0; % -10
theta_0 = 0; % 1,5

% Extended observer parameters // Параметры расширенного наблюдателя

kappa = 1e+3;
overline_b = 20;

hat_xi_0 = [0; 0; 0];
sigma_0 = 0;

% Controller parameters // Параметры регулятора

alpha_K = 1;
roots_K = -alpha_K * ones(1, 3);

N = 1e+7;

% Internal model parameters // Параметры внутренней модели

alpha_F = 1;
roots_F = -alpha_F * ones(1, 3);
roots_dist_gen = [0, 1j, -1j];

eta_0 = zeros(3, 1); % 1, 3, -5

% Disturbance (external torque) parameters // Параметры внешнего возмущения (момента нагрузки)

dist_bias = 0;
dist_amp = 0;
dist_freq = 0;
dist_phase = 0;

dist_2_bias = 0; % 0
dist_2_amp = 0; % 2
dist_2_freq = 0; % 4
dist_2_phase = 0; % -1.5

% Noise parameters

dist_noised = 0; % is external torque noise present // присутствует ли шум в моменте нагрузки 
dist_noise_mean = 0; % 1
dist_noise_variance = 1e-1;

out_noised = 0; % is output noise present // присутствует ли шум в выходе
out_noise_mean = 0; % -0.1
out_noise_variance = 1e-3;

noise_sample_time = 1e-3;

% Reference signal parameters // Параметры опорного сигнала

theta_ref = pi/3;

additional_calculations();