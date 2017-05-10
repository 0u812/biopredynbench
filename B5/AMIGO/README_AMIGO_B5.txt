
This is the README file for the AMIGO implementation of benchmark B5 in the BioPreDyn-Bench collection.
http://www.iim.csic.es/~gingproc/biopredynbench/

Created:	17/06/2014
Last modified:	02/07/2014
COntact:	gingproc@iim.csic.es

AMIGO [1] is a toolbox that works under Matlab and covers all the steps of the iterative identification procedure: local and global sensitivity analysis, local and global ranking of parameters, parameter estimation, identifiability analysis and optimal experimental design. 
The AMIGO implementations are ready-to-run: all the aspects of the parameter estimation problem are defined.

SOFTWARE REQUIREMENTS and INSTALLATION: 
Benchmark B5 can be run in Linux and Windows.
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

CONFIGURING AND TROUBLESHOOTING MEX IN MATLAB:

WINDOWS

A list of supported compilers for Windows is available at:
http://www.mathworks.es/support/compilers/R2014a/index.html
We recommend that you install:
Microsoft Visual C++ 2010 Professional SP1
Available at:
https://www.dreamspark.com/Product/Product.aspx?productid=4

After installing visual studio, open Matlab and type:
mex -setup
Would you like mex to locate installed compilers [y]/n ? y

A list of of options will be provided, select Microsoft Visual C++ 2010:
Select a compiler:
[1] Lcc-win32 C 2.4.1 in C:\MATLAB\R2011b\sys\lcc
[2] Microsoft Visual C++ 2010 in C:\Program Files (x86)\Microsoft Visual Studio 10.0
[3] gcc in C:\mingw\bin
[0] None

Compiler: 2
Please verify your choices:
Compiler: Microsoft Visual C++ 2010
Location: C:\Program Files (x86)\Microsoft Visual Studio 10.0
Are these correct [y]/n? y


LINUX

A list of supported compilers for Windows is available at:
http://www.mathworks.es/support/compilers/R2014a/index.html

We recommend that you use GCC.
If you already have gcc and g++ installed in your machine, you need to run (in matlab):
>mex –setup
You will be given a number of choices; select option 1 referring to gcc.
After that you will need to edit the mexopts.sh file which is usually located under /home/user_name/.matlab/Rxxxxx/mexopts.sh

And in the glnx86 or glnx64 area edit the CFLAGS variable and eliminate the -ansi flag; e.g. replace:
CFLAGS= -ansi –D_GNU_SOURCE
by
CFLAGS=–D_GNU_SOURCE

Try one of the examples and it should run. If there errors about lstdc++.so missing then install g++. For instance in Ubuntu:
>sudo apt-get install g++ 



HOW TO PROCEED:
Using the AMIGO implementation is straightforward:

1. Copy the benchmark files in a working dir of your choice.

2. Start a Matlab session and go to the AMIGO folder.

3. Initialize the AMIGO toolbox: run the script
>> AMIGO_Startup

4. Go back to your working dir and prepare the model, run
>> AMIGO_Prep('b5_amigo')
This step only has to be performed the first time the model is used.
(If you change the model script, you need to run it again)

5. Start an optimization: run
>> AMIGO_PE('b5_amigo')
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
Using the eSS method with the default settings, we reached a cost function value (expected value to reach) of Jf = 3.0725*10^3 after approximately 8.8*10^4 evaluations (16 hours of CPU time in a computer with Intel Xeon Quadcore processor, 2.50 GHz).
The objective function Jf is of the log-likelihood type, i.e. the squared difference between data and model outputs, divided by the variance. 
Note that these results may vary from one optimization run to the next, due to the stochastic nature of the algorithm.

REMARKS:
Parameter estimation is just one of the tasks that can be carried out in AMIGO. The implementation provided can also be used for model simulation (AMIGO SModel, AMIGO SObs, AMIGO SData), identifiability analysis (AMIGO LRank), etc. To do this, replace the AMIGO PE in step (5) with the corresponding method. 
CHECK THE AMIGO USER'S GUIDE FOR FURTHER INFORMATION.
Please note that, depending on the task, you may want to modify the parameter values too. This can be done by changing the values of inputs.PEsol.global_theta_guess in the AMIGO files. 
By default, it is set to a vector of random values inside the bounds. 
The nominal values are stored in the pnom.mat file. The aim of the parameter estimation task is to recover the nominal values, hence they must NOT be used as initial guess in the optimization; they should only be used for post-estimation analysis.

Note: a specific version of AMIGO is provided with this collection of benchmarks, which contains some adjustments not available in other released versions. To avoid compatibility issues, the AMIGO implementations of the benchmark problems should be used
with the version of AMIGO provided with this benchmark, AMIGO2014bench.

CONTENTS:
b5_amigo.m		Main AMIGO file for B1
logic.c			auxiliary c source file
pnom.mat		mat-file containing the nominal parameter vector, pnom
README_AMIGO_B5.txt	This file


[1] Balsa-Canto E, Banga JR (2011) Amigo, a toolbox for advanced model identification in systems biology using global optimization. Bioinformatics 27: 2311–2313.
