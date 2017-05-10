
This is the README file for the MATLAB implementation of benchmark B3 in the BioPreDyn-Bench collection.

http://www.iim.csic.es/~gingproc/biopredynbench/

Created:	17/06/2014
Last modified:	23/06/2014
COntact:	gingproc@iim.csic.es

MATLAB is a high-level language and interactive environment for numerical computation, visualization, and programming. The MATLAB implementations provide model dynamics and calculation of the objective function value. Please note that some aspects of the optimization problem have to be set by the user (initial point, parameter bounds, solver, etc).

SOFTWARE REQUIREMENTS: 
Matlab 64-Bit under Linux, or Matlab 32-Bit under Windows.

HOW TO PROCEED:
The Matlab implementation includes a number of files, which allow the user to set up a customized parameter estimation with any method implemented in Matlab.
To test new optimization methods, select b3_obj.m as their objective function. An example of this is provided in the folder "example_optimization".
The type of cost function used can be changed by modifying the script b3_obj.m, which returns the cost as a variable named 'objective', calculated at the end of the script. 
By changing the weights used to calculate the 'objective', different cost functions can be used (note that in this way it is possible to use the same functions as e.g. COPASI).

EXPECTED RESULTS:
We report here, as a reference, an example of the results one can typically expect to obtain:
Using the eSS method with the default settings, we reached a cost function value (expected value to reach) of Jf = 0.3703 after approximately 7*10^6 evaluations (336 hours of CPU time in a computer with Intel Xeon Quadcore processor, 2.50 GHz).
The objective function Jf is of the weighted least squares type, i.e. the squared difference between data and model outputs, divided by the squared maximum of the experimental value for each observable. 
Note that these results may vary from one optimization run to the next, due to the stochastic nature of the algorithm.

CONTENTS:
b3_test.m 		carries out a test integration.
b3.m 			returns the system derivatives (dxdt) for a particular parameter vector (p), states vector (x), and time instant (t). If no parameter or states vector is provided, it returns the nominal values of the parameters and the initial conditions for the states.
b3_obj.m 		calculates the objective function used in the optimizations for a particular parameter vector. This function returns three outputs: the objective function itself, the constraints, and the residuals.
b3_dyn.m 		returns the system outputs that will be used in the calculation of the objective function.
b3_initial.m 		returns some model constants: parameter values and steady-state concentrations.
b3_data.mat 		contains the pseudo-experimental data.
b3_mex.mexa64 		mex-file integrating the model (Linux, Matlab 64 bit) 
b3_mex.mexw32 		mex-file integrating the model (Windows, 32 bit) 
README_MATLAB_B3.txt	this file

NOTE: the mex files integrating the models as compiled code are provided in order to speedup
the computations (dynamics declared in Matlab are given in folder "dynamics_in_Matlab",
but their integration (with e.g. ode15s) is much slower)