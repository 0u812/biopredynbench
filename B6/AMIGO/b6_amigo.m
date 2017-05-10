%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This is the main file of the AMIGO implementation of benchmark B6     
%
% - To change the optimization settings, edit lines 130-134, where the
% optimizer (default: eSS), local solver (default: fmincon), and maximum
% number of function evaluations and CPU time are set.
%
% - If you want to modify the parameter bounds and initial guess, modify
% lines 77-127. Note that when comparing optimization methods these 
% settings must be equal for all methods, to avoid unfair comparisons.
%
% - For further modifications please refer to the AMIGO manual and the
% benchmarks documentation.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%=======================
% PATHS RELATED DATA
%=======================

results.pathd.results_folder = 'b6';            
results.pathd.short_name     = 'b6';   

%========================
% MODEL RELATED DATA
%========================

inputs.model.input_model_type   = 'blackboxcost';   
inputs.model.blackboxcost_file  = 'b6_obj';       
inputs.model.n_st               = 212;     
inputs.model.n_par              = 37; 
inputs.model.n_stimulus         = 0;
inputs.model.names_type         = 'standard';
inputs.model.par                = [
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
	5.14696]'; % These values may be updated during optimization  


%==================================
% UNKNOWNS RELATED DATA
%==================================
    
inputs.PEsol.global_theta_guess = [ 
    ...%promoter_strengths:    
                 12.48991375   26.64956536  24.21400803  19.14696636 ... 
    ...%genetic_interconnect_matrix:
                 -0.02875641   0.03773355  -0.08696411   0.02085833 ...  
                  0.07752513  -0.05127861   0.08351538  -0.03693460 ...  
                 -0.02272315  -0.05630814   0.03840626   0.07150631 ...  
                  0.02276078  -0.02350780   0.01856495  -0.06116937 ...
    ...%external_input_strengths:
                 -0.14654266   0.01651517   0.06442419  -0.05467585 ...
                 -0.12247616  -0.10550997   0.10687539   ...
                  0.02896215  -0.07365022  -0.06193835   ...
                  0.02710513  -0.04491538   0.10493181   ... 
    ...%maternal_connection_strengths:
                  ...
    ...%promoter_thresholds:
                  ...
    ...%diffusion_parameter(s):
                  ...
    ...%protein_half_lives:
                  13.76469068  7.27890037  11.63317492  12.03105457 ...           
    ...%translational_transcriptional_delays:
                  ];
                          
inputs.PEsol.global_theta_min  = [ 
...%promoter_strengths: 
    10.0    10.0    10.0    10.0 ...
           -2    -2    -2    -2  ... 
           -2    -2    -2    -2  ...
           -2    -2    -2    -2  ...
           -2    -2    -2    -2  ...
           -2    -2    -2    -2  ...
           -2    -2    -2  ...
           -2    -2    -2  ...
           -2    -2    -2  ...
           5       5       5       5 ...
                 ];

inputs.PEsol.global_theta_max  = [ 
...%promoter_strengths:    
30.0    30.0    30.0    30.0 ...
                2 2 2 2 ... 
                2 2 2 2 ...
                2 2 2 2 ...
                2 2 2 2 ...
                2 2 2 2 ...
                2 2 2 ...
                2 2 2 ...
                2 2 2 ...
                15 15 15 15 ...
                ];

% set options for eSS solver:
inputs.nlpsol.nlpsolver        = 'ess';
inputs.nlpsol.eSS.maxeval      = 2e6;
inputs.nlpsol.eSS.maxtime      = 24*3600;
inputs.nlpsol.eSS.local.solver = 'fmincon';
inputs.nlpsol.eSS.local.finish = 'fmincon';
%inputs.nlpsol.multi_starts = 99999;
 
results.plotd.plotlevel = 'noplot';  
