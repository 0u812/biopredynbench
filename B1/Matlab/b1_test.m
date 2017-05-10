% b1_test
% performs a test integration of the b1 model with nominal parameter values
% and displays the objective function value

[dxdt, x, par] = b1(0); 
objective = b1_obj(par);
disp(objective)
