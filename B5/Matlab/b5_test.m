% b5_test
% performs a test integration of the b5 model with nominal parameter values
% and displays the objective function value

load('b5_data');
f= b5_obj(inputs.model.par);   
disp(f)
