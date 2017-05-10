% b3_PE               Perform an example of parameter estimation of the  
%                     b3 model, starting from random initial parameters
%
% This file is provided as a template showing how to set up a parameter 
% estimation task using Matlab with any method chosen by the user. 
% As examples, it shows two different options for the optimization method: 
% a local method (FMINCON) and a global method (enhanced scatter search, 
% eSS). Depending on the method you choose, uncomment line 45 or 62. 
% Other methods chosen by the user can be easily added. 
%
%--------------------------------------------------------------------------
% IMPORTANT REMARKS:
%
% - Note that the use of a local solver such as FMINCON is in general NOT
% recommended for parameter estimation of these benchmarks. It is used here
% solely for demonstration purposes. 
% Also note that FMINCON requires the Matlab Optimization toolbox. 
% 
% - Enhanced scatter search (eSS) is included in the MEIGO toolbox, which 
% can be freely downloaded (Matlab version) from: 
% http://www.iim.csic.es/~gingproc/meigo.html
% To use the MEIGO toolbox, unzip it and execute the 'install_MEIGO.m' 
% script. For more detailed instructions see the MEIGO manual, available 
% from the aforementioned web.
%--------------------------------------------------------------------------

clear

% Load the file b3_bounds.mat, containing the following vectors:
% - Lower bounds for the unknown parameters: lb
% - Upper bounds for the unknown parameters: ub
% - Initial guess (random): x0 
load b3_bounds

%--------------------------------------------------------------------------
% Option 1: FMINCON (from the MATLAB Optimization toolbox)

% Constraints to be defined for fmincon:
A = [];
b = [];
Aeq = [];
beq = [];

% Launch the optimization:
% [x,fval] = fmincon(@b3_obj,x0,A,b,Aeq,beq,lb,ub); 
 
%--------------------------------------------------------------------------
% Option 2: eSS (from the MEIGO toolbox)

% Problem and options to be defined for ESS:
problem.f   = 'b3_obj';       
problem.x_L = lb;                     
problem.x_U = ub;
problem.x_0 = x0;

opts.maxeval      = 1e6;
opts.maxtime      = 24*3600;
opts.local.solver = 0;
opts.local.finish = 0;

% Launch the optimization:
Results = MEIGO(problem,opts,'ESS');
