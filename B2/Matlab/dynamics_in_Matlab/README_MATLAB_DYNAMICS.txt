
This is the README file for the Matlab implementation of the dynamics of benchmarks B1-B4 in the BioPreDyn-Bench collection.

Created:	17/06/2014
Last modified:	17/06/2014
COntact:	gingproc@iim.csic.es

MATLAB is a high-level language and interactive environment for numerical computation, visualization, and programming. The MATLAB implementations provide model dynamics and calculation of the objective function value. Please note that some aspects of the optimization problem have to be set by the user (initial point, parameter bounds, solver, etc).

SOFTWARE REQUIREMENTS: 
All of the problems in the BioPreDyn-Bench collection can be run in Linux 64 bit and Windows.
A Matlab installation is required. In Windows, the Matlab version must be 32 bit.

HOW TO PROCEED:
For benchmarks B1-B4, the Matlab folders include an additional subfolder named "dynamics_in_Matlab". 
The subfolder contains this README file and a Matlab script named "b*_dyn_p.m", where * stands for the benchmark number (1-4).
The script "b*_dyn_p.m" is a function of the form:
    dxdt = b1_dyn_p(t, x, p)
That is, it has as inputs the time (t), the states values (x) and the parameter values (p), and outputs the derivatives of the state variables at that time point, dx/dt.
By integrating the script, the model can be simulated.

IMPORTANT: note that for each benchmark, compiled mex-files from either C or FORTRAN are provided in the root Matlab folder. These mex-files contain the same 
dynamics as the "b*_dyn_p.m" files, but they need less computation time. Hence, it is strongly advised to use the mex-files for simulation and parameter estimation.
The "b*_dyn_p.m" file is provided here so that the user can modify the model dynamics as desired.

CONTENTS:
b*_dyn_p			script that returns the derivatives of the state variables
README_MATLAB_DYNAMICS.txt	this file