%
%
% Inputs:
%  conc - doping concentration of bulk
%  temp - temperature (degC)
%

function [phi_b] = calculate_bulk_potential(conc, temp)
global k ni q

phi_b = k*(temp)/q * log(conc./ni);
end