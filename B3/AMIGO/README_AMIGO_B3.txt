
This is the README file for the AMIGO implementation of benchmark B3 in the BioPreDyn-Bench collection.

Created:	17/06/2014
Last modified:	02/07/2014
COntact:	gingproc@iim.csic.es

AMIGO [1] is a toolbox that works under Matlab and covers all the steps of the iterative identification procedure: local and global sensitivity analysis, local and global ranking of parameters, parameter estimation, identifiability analysis and optimal experimental design. 
The AMIGO implementations are ready-to-run: all the aspects of the parameter estimation problem are defined.

SOFTWARE REQUIREMENTS and INSTALLATION: 
Benchmark B3 can be run in Linux and Windows.
- A Matlab installation is required. In Windows, the Matlab version must be 32-Bit, in 
Linux 64-Bit.
- a specific version of AMIGO (AMIGO2014bench) must be used with this collection of 
benchmarks. It can be obtained from:
http://www.iim.csic.es/~gingproc/biopredynbench/download.html
- unzip it in a dir named "AMIGO2014bench"
- install it following the instructions in AMIGO2014bench\doc
- test AMIGO following the USER'S GUIDE (PDF file in dir AMIGO2014bench\doc )
- install a C compiler to build Matlab mex files (do NOT use the lcc compiler
included with Matlab). For Windows, we recommend Visual Studio 2010 Professional, 
which, in the case of academic personnel and institutions, can be obtained from:
https://www.dreamspark.com/Product/Product.aspx?productid=4
For Linux, we recommend gcc. You might be able to use other C compilers. The
above suggestions are the ones we have tested.
- follow the instructions in the following link to be able to build mex files, selecting
the C compiler you want to use:
http://www.mathworks.es/es/help/matlab/matlab_external/changing-default-compiler.html
- in Matlab, test the mex command with an example to verify it is working properly:
http://www.mathworks.es/es/help/matlab/ref/mex.html
- if you get errors in any of the steps above, please check the relevant
documentation. We can not offer support to solve these general installation issues.

HOW TO PROCEED:
Using the AMIGO implementation is straightforward:

1. Copy the benchmark files in a working dir of your choice.

2. Start a Matlab session and go to the AMIGO folder.

3. Initialize the AMIGO toolbox: run the script
>> AMIGO_Startup

4. This model B3 is declared as a black-box, with mex binaries provided,
and therefore you do not need to run AMIGO Prep with it. Please note
that, as a consequence, you can not change elements of the model like e.g. 
the dynamics. This is not a problem in this context since benchmarks
problems must be static in their definition to ensure consistency of
results.

5. Peform the parameter estimation, run
>> AMIGO_PE('b3_amigo')
This will carry out a parameter estimation task using the optimization options 
defined in the AMIGO model script (or default options if none are declared there). 
If you want to customize the optimization, edit the corresponding options before this step.
For example, you can easily change the optimization solver, its tuning parameters,
convergence criteria, etc. Or easily build your own combination of global and local
optimization solvers. CHECK THE AMIGO USER'S GUIDE FOR FURTHER INFORMATION.

6. Analyze the results. AMIGO provides a large number of options regarding
plotting and postprocessing of results. CHECK THE AMIGO USER'S GUIDE FOR FURTHER
INFORMATION.

EXPECTED RESULTS:
We report here, as a reference, an example of the results one can typically expect to obtain:
Using the eSS method with the default settings, we reached a cost function value (expected value to reach) of Jf = 0.3703 after approximately 7*10^6 evaluations (336 hours of CPU time in a computer with Intel Xeon Quadcore processor, 2.50 GHz).
The objective function Jf is of the weighted least squares type, i.e. the squared difference between data and model outputs, divided by the squared maximum of the experimental value for each observable. 
Note that these results may vary from one optimization run to the next, due to the stochastic nature of the algorithm.

REMARKS:
Parameter estimation is just one of the tasks that can be carried out in AMIGO. The implementation provided can also be used for model simulation (AMIGO SModel, AMIGO SObs, AMIGO SData), identifiability analysis (AMIGO LRank), etc. To do this, replace the AMIGO_PE in step (5) with the corresponding method. 
CHECK THE AMIGO USER'S GUIDE FOR FURTHER INFORMATION.
Please note that, depending on the task, you may want to modify the parameter values too. This can be done by changing the values of inputs.PEsol.global_theta_guess in the AMIGO files. 
By default, it is set to a vector of random values inside the bounds. 
The nominal values are stored in the pnom.mat file. The aim of the parameter estimation task is to recover the nominal values, hence they must NOT be used as initial guess in the optimization; they should only be used for post-estimation analysis.

Note: a specific version of AMIGO is provided with this collection of benchmarks, which contains some adjustments not available in other released versions. To avoid compatibility issues, the AMIGO implementations of the benchmark problems should be used
with the version of AMIGO provided with this benchmark, AMIGO2014bench.

CONTENTS:
b3_amigo.m		Main AMIGO file for B3
b3_data.mat		mat-file with the pseudo-experimental data
b3_dynamics.m		m-file that integrates the model dynamics
b3_initial.m		m-file with initial conditions and parameter values
b3.mexa64		mex-file with the model dynamics for Linux (Matlab 64-Bit)
b3.mexw32		mex-file with the model dynamics for Windows (Matlab 32-Bit)
pnom.mat		mat-file with the nominal parameter vector, pnom
README_AMIGO_B3.txt	This file

[1] Balsa-Canto E, Banga JR (2011) Amigo, a toolbox for advanced model identification in systems biology using global optimization. Bioinformatics 27: 2311–2313.