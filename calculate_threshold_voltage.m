
function [Vt] = calculate_threshold_voltage(Vfb, phi_b, conc, Vsb, Cox, mos_type)
global epsilon_0 q

if strcmp(mos_type, 'nmos')
   Vt = Vfb + 2*phi_b ...
            + sqrt(2*11.7*epsilon_0*q*conc*(2*phi_b + Vsb))/Cox;
elseif strcmp(mos_type, 'pmos')
    Vt = Vfb - 2*phi_b ...
             - sqrt(2*11.7*epsilon_0*q*conc*(2*phi_b + Vsb))/Cox;
else
    fprintf('Wrong MOS type. Only choices are pmos or nmos');
end
end