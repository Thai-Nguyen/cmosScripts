
function [Cox] = calculate_gate_oxide_capacitance(tox)
global epsilon_0

Cox = 3.9*epsilon_0/tox;
end