% b2_test
% performs a test integration of the b2 model with nominal parameter values
% and displays the objective function value

par = b2_pars; 
objective = b2_obj(par);
disp(objective)
