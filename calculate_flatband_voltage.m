
function [Vfb] = calculate_flatband_voltage(phi_b, gate_type, sub_type)
global Eg

% Flatband equation dependent on doping of gate and substrate
if gate_type == 'n'
    if sub_type == 'n'
        Vfb = -Eg/2 + phi_b;
    elseif sub_type == 'p'
        Vfb = -Eg/2 - phi_b;
    end
elseif gate_type == 'p'
    if sub_type == 'n'
        Vfb = Eg/2 + phi_b;
    elseif sub_type == 'p'
        Vfb = Eg/2 - phi_b;
    end
end
end