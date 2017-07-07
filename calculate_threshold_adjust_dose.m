% Calculates required threshold adjust implant dose
% 
% Inputs:
%  Cox - gate oxide capacitance
%  vth_target - desired threshold voltage
%  vth_current - current threshold voltage
%  
% Outputs
%  Dimp - Implant dose required

function [Dimp] = calculate_threshold_adjust_dose(Vth_target, Vth_current, Cox)
global q

% Calculate required shift in flatband voltage
dVfb = Vth_target - Vth_current;

% Calculate required implant dose to get target threshold voltage
Dimp = -dVfb*Cox/q;

end