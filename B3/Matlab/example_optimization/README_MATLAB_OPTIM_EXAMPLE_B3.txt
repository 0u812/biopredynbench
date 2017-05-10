
This is the README file for the example optimization of benchmark B1 using MATLAB in the BioPreDyn-Bench collection.

Created:	17/06/2014
Last modified:	17/06/2014
COntact:	gingproc@iim.csic.es

MATLAB is a high-level language and interactive environment for numerical computation, visualization, and programming. The MATLAB implementations provide model dynamics and calculation of the objective function value. Please note that some aspects of the optimization problem have to be set by the user (initial point, parameter bounds, solver, etc).

SOFTWARE REQUIREMENTS: 
Matlab 64-Bit under Linux, or Matlab 32-Bit under Windows.
For the example below, you will need the MEIGO toolbox:
http://www.iim.csic.es/~gingproc/meigo.html

HOW TO PROCEED:
The main file is b1_PE.m. It defines a parameter estimation problem and solves it with one of these two methods: fmincon or eSS. 
Open it and edit it according to your preferences. You can modify this file to test any optimization method you wish. 

CONTENTS:
b3_bounds.mat 		stores the parameter bounds and initial guess for the optimization
b3_data.mat 		contains the pseudo-experimental data
b3_dyn.m 		returns the system outputs that will be used in the calculation of the objective function
b3_initial.m 		returns some model constants: parameter values and steady-state concentrations
b3_mex.mexa64 		mex-file integrating the model (Linux, Matlab 64 bit) 
b3_mex.mexw32 		mex-file integrating the model (Windows, 32 bit)
b3_obj.m 		calculates the objective function used in the optimizations for a particular parameter vector. This function returns three outputs: the objective function itself, the constraints, and the residuals
b3_PE.m			defines and solves a parameter estimation problem
README_MATLAB_OPTIM_EXAMPLE_B3.txt	this file


