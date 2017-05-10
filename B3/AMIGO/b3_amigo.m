%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This is the main file of the AMIGO implementation of benchmark B3     
%
% - To change the optimization settings, edit lines 141-146, where the
% optimizer (default: eSS), local solver (default: none), and maximum
% number of function evaluations and CPU time are set.
%
% - If you want to modify the parameter bounds and initial guess, modify
% lines 102-131. Note that when comparing optimization methods these 
% settings must be equal for all methods, to avoid unfair comparisons.
%
% - For further modifications please refer to the AMIGO manual and the
% benchmarks documentation.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% record random seed:
inputs.randstate = sum(100*clock);
rand('state',inputs.randstate);
randn('state',inputs.randstate);


%=======================
% PATHS RELATED DATA
%=======================

inputs.pathd.results_folder = 'b3_bb'; % Folder to keep results (in Results) for a given problem
inputs.pathd.short_name     = 'b3';    % To identify figures and reports for a given problem

%========================
% MODEL RELATED DATA
%========================

inputs.model.input_model_type = 'blackboxmodel'; % Model introduction: 'charmodel'|'matlabmodel'|'sbmlmodel'|'fortranmodel'|'blackboxmodel'|'blackboxcost
inputs.model.blackboxmodel_file = 'b3_dynamics'; % File including the system dynamics
[p, ssGLC, ssACT] = b3_initial;
inputs.model.n_st = length(ssGLC);               % Number of states
inputs.model.n_par = length(p);                  % Number of model parameters
inputs.model.n_stimulus = 0;                     % Number of inputs, stimuli or control variables

inputs.model.st_names={};
for i=1:inputs.model.n_st
    inputs.model.st_names{i}=['x' num2str(i)];  
end
inputs.model.st_names=char(inputs.model.st_names);

inputs.model.par_names={};
for i=1:length(p)
    inputs.model.par_names{i}=['par' num2str(i)]; 
end
inputs.model.par_names=char(inputs.model.par_names);

inputs.model.par = p;

%==================================
% EXPERIMENTAL SCHEME RELATED DATA
%==================================

inputs.exps.n_exp  = 1; 

% (these settings are partially overwritten in the black box model):

% simulation times:    
tf = 160000;         
inputs.exps.t_f{1} = tf;
t0 = 0;
inputs.exps.t_in{1} = t0;
inputs.exps.t_s{1} = t0:1000:tf;
inputs.exps.n_s{1} = numel(inputs.exps.t_s{1});

% initial conditions:
ic = ssGLC;
a__x__OD  = 1; ic(a__x__OD)  = 0.03; 
a__x__ACT = 2; ic(a__x__ACT) = 0;
a__x__GLC = 3; ic(a__x__GLC) = 4.8;
inputs.exps.exp_y0{1} = ic;

% data:
inputs.exps.n_obs{1}      = length(ssGLC);
inputs.exps.obs{1}        = 'states';
inputs.exps.data_type     = 'real';
load b3_data xnom
inputs.exps.exp_data{1}   = xnom;      

%==================================
% UNKNOWNS RELATED DATA
%==================================

% Names of the 178 unknown parameters (from the total 193):
j = 0;
for i=[1:4 6:16 18:28 30:49 51:59 61:67 69:76 78:82 84:87 89:92 94:97 99:118 121:175 178:193]
    j = j+1;
    p_reduced{j} = ['par' num2str(i)]; 
end
inputs.PEsol.id_global_theta = char(p_reduced);

% nominal values of the 178 unknown parameters:
nom_theta = [ 
    p(1:4),p(6:16),p(18:28),p(30:49),p(51:59),p(61:67),p(69:76),...
    p(78:82),p(84:87),p(89:92),p(94:97),p(99:118),p(121:175),p(178:193)];

% parameter bounds:
inputs.PEsol.global_theta_min   = 0.1*nom_theta; 
inputs.PEsol.global_theta_max   = 10*nom_theta; 

% parameters corresponding to Hill coefficients have tighter bounds:
lower_hill = 0.5;
upper_hill = 4;
inputs.PEsol.global_theta_min(60) = lower_hill;
inputs.PEsol.global_theta_max(60) = upper_hill;
inputs.PEsol.global_theta_min(98) = lower_hill;
inputs.PEsol.global_theta_max(98) = upper_hill;
inputs.PEsol.global_theta_min(101) = lower_hill;
inputs.PEsol.global_theta_max(101) = upper_hill;
inputs.PEsol.global_theta_min(104) = lower_hill;
inputs.PEsol.global_theta_max(104) = upper_hill;
inputs.PEsol.global_theta_min(120) = lower_hill;
inputs.PEsol.global_theta_max(120) = upper_hill;
inputs.PEsol.global_theta_min(125) = lower_hill;
inputs.PEsol.global_theta_max(125) = upper_hill;
inputs.PEsol.global_theta_min(141) = lower_hill;
inputs.PEsol.global_theta_max(141) = upper_hill;

% Very small parameters have larger upper bounds (to avoid errors with the
% method'finitedifferences', used by some local solvers)
for i=1:size(nom_theta,2)
    if nom_theta(i) < 1e-8
        inputs.PEsol.global_theta_max(i) = 1e-7;
    end
end

inputs.PEsol.global_theta_guess = inputs.PEsol.global_theta_min + (inputs.PEsol.global_theta_max-inputs.PEsol.global_theta_min).*rand(size(nom_theta));
% inputs.PEsol.global_theta_guess  = nom_theta; 

inputs.PEsol.PEcost_type = 'lsq';
inputs.PEsol.lsq_type = 'Q_expmax'; 

%=======================================
% OPTIMIZATION settings
%=======================================

inputs.nlpsol.nlpsolver   = 'ess';
inputs.nlpsol.eSS.maxeval = 7.2e6;
inputs.nlpsol.eSS.maxtime = 336*3600;
% inputs.nlpsol.eSS.log_var = 1:(size(inputs.PEsol.global_theta_guess,2)); % set log exploration to all or selected vars
inputs.nlpsol.eSS.local.solver = 0;
inputs.nlpsol.eSS.local.finish = 0;

inputs.nlpsol.multi_starts = 999;
% comment the following lines unless you experience convergence errors:
% inputs.model.obsfile = 0;
% results.plotd.plotlevel = 'noplot';

