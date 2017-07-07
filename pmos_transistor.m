clear all
GlobalConstants

%% Parameters
tox = 7.2e-7; % gate oxide thickness
% surface_conc = 3.87533e15;
surface_conc = 3.773e17;
room_temp = 300;
desired_Vt = -0.5;

%% Calculate
Cox   = calculate_gate_oxide_capacitance(tox);
phi_b = calculate_bulk_potential(surface_conc, room_temp)
Vfb   = calculate_flatband_voltage(phi_b, 'p', 'n')
Vt    = calculate_threshold_voltage(Vfb, phi_b, surface_conc, 0, Cox, 'pmos')
Dimp  = calculate_threshold_adjust_dose(desired_Vt, Vt, Cox);

%% Output results
fprintf('Current threshold voltage: %2.4f V\n', Vt);
fprintf('Desired threshold voltage: %2.4f V\n', desired_Vt);
fprintf('Required implant adjust dose: %2.4e cm^-2\n', Dimp);