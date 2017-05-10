% b6_test
% performs a test integration of the b6 model with an optimized parameter
% vector, and displays the objective function value

par = [
    30
	29.9998
	17.9103
	19.3859
	-0.14647
	-0.16443
	0.01901
	-0.41791
	-0.12796
	-0.00053
	-0.07268
	-0.02871
	-0.00946
	-0.39451
	0.01984
	0.00479
	-0.13268
	-0.01254
	-0.07873
	0.04014
	0.64947
	-0.01383
	0.53103
	-1.90012
	0.33423
	0.01054
	-0.00038
	0.07956
	0.0255
	-0.13691
	0.02622
	0.0177
	-0.33254
	11.655
	5
	5.42123
	5.14696]; 

f= b6_obj(par);
disp(f) % should be 132310
