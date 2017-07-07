clear all
GlobalConstants

%% Parameters
tox = 7e-7; % gate oxide thickness
rho = 5.0; % resistivity of wafer
% surface_conc = 1/(q*mu_p*rho);
% surface_conc = 1.875e18;
surface_conc = 6.493e17;
room_temp = 300;
desired_Vt = 0.5;

%% Calculate
Cox   = calculate_gate_oxide_capacitance(tox);
phi_b = calculate_bulk_potential(surface_conc, room_temp)
Vfb   = calculate_flatband_voltage(phi_b, 'n', 'p')
Vt    = calculate_threshold_voltage(Vfb, phi_b, surface_conc, 0, Cox, 'nmos')
Dimp  = calculate_threshold_adjust_dose(desired_Vt, Vt, Cox);

%% Output results
fprintf('Current threshold voltage: %2.4f V\n', Vt);
fprintf('Desired threshold voltage: %2.4f V\n', desired_Vt);
fprintf('Required implant adjust dose: %2.4e cm^-2\n', Dimp);