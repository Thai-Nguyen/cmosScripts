% Q - Implant dose
% D - diffusion coefficient
% t - time
% x - depth

function [C] = calculate_diffusion(Q, D, t, x)
C = Q/(sqrt(pi*D*t)) .* exp(-x.^2 ./ (4*D*t));
end