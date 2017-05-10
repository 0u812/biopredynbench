HOW TO RUN AND COMPILE THE BENCHMARKS IN C
	
This is the README file for the C implementation of benchmark B4 in the 
BioPreDyn-Bench collection.
http://www.iim.csic.es/~gingproc/biopredynbench/

Created:	17/06/2014
Last modified:	20/06/2014
Contact:	gingproc@iim.csic.es
	
----------------------------------------------------------------------------------

USING THE C IMPLEMENTATIONS

NOTE: the C implementations of the benchmarks give you the code and basic
instructions to define and use the objective functions and then add your
own preferred optimization solver. They are NOT fully ready to run in the sense
that you still need to define such solver doing some coding in C.
In order to facilitate this process, we provide a template file that can
be easily adapted and extended.

TEMPLATE FILE

Brief overview of the template file:


	In the b4_fullC_template.c file we provide the example code to perform a number of tasks:

	1) How to evaluate an objective function, how_to_evaluate(AMIGO_problem* amigo_problem):
		We show the objective function value obtained with the nominal parameter vector (or
		with a good guess),
		and how to generate a new parameter vector and evaluate it.
		
	
	2) How to implement your own objective function, 
	    objective_function(double* x, void* data) :
		The objective function used in the previous example is the the squared difference 
		between the data and the model simulation scaled by a factor, 
		which in this case corresponds to the inverse of the expected experimental error.  
		It is possible to use a different objective function if you prefer to do so. 
		To this end, we illustrate how the computations	are done in the function 
		how_to_create_a_new_objective_function(AMIGO_problem* amigo_problem). 
		By modifying it, an alternative objective function can be defined.
		
	
	3) How to call an optimization algorithm:
		In the template we provide a small example using a naive solver, random_search(AMIGO_problem* amigo_problem)
		Different optimization solvers in C will be called in relatively different ways. However, it is common to provide an objective function that receives an array (double*) of decision variables values and a pointer that allows you to specify the location of some ad hoc data. To illustrate how an optimization algorithm can be configured, we provide a naive optimization	algorithm, i.e. a random search, where parameter solutions are randomly generated and evaluated. 
		PLEASE NOTE: this random_search solver is provided here with the only objective
		of illustrating the use of an optimizer, but we DO NOT recommend its use as optimizer at all.
		

---------------------------------------------------------------------------------------------

	
CONTENTS


	- b4_fullC_template.c: a file that contains examples for some simple tasks that you 
		can do using the benchmark.

	- fullC_data.mat: a Matlab file containing the experimental design and data.  

	- Makefile: used to compile the template file in Linux. REQUIRES previous steps. 
		See below.
	
	- compile_c.bat: a Windows batch script with the GCC command to compile the template
		file. REQUIRES previous steps. See below.

	- nominalpars.h contains a set of nominal or best known set of parameters.

	- This README file.



---------------------------------------------------------------------------------------------

REQUIREMENTS:


    Windows 32-bit and 64-bit
   
        -A 32-bit installation of Matlab or Matlab Compiler Runtime.
        MCR is available at http://www.mathworks.es/products/compiler/mcr/.
        Note that you can run the 32-bits libraries even if you have the 64-bit version of Windows.
       
        -GCC compiler; this distribution has been tested with the minGW version shipped with RTools:
        http://cran.r-project.org/bin/windows/Rtools/
            (tested with Rtools version 3.1.0.1939 and gcc-4.6.3)
				
		- a specific version of AMIGO (AMIGO2014bench) must be used with this collection of
		benchmarks. It can be obtained from:	
		http://www.iim.csic.es/~gingproc/biopredynbench/download.html
	
	
	Linux 32-bit and 64-bit
   
        -An installation of Matlab or Matlab Compiler Runtime.
        MCR is available at http://www.mathworks.es/products/compiler/mcr/. Choose the MCR version
        appropriate for your machine(32-bit or 64-bit);
       
        -GCC compiler  (tested with gcc-4.3.1)
		
		- a specific version of AMIGO (AMIGO2014bench) must be used with this collection of
		benchmarks. It can be obtained from:	
		http://www.iim.csic.es/~gingproc/biopredynbench/download.html



---------------------------------------------------------------------------------------------

INSTALLATION:


	Windows

	
		Step 1
			A compiled version of the libAMIGO library is needed. 
			For Windows the 32-bit library is included in the AMIGO distribution, under:
			AMIGO2014Bench\Kernel\libAMIGO\lib_win32\vs
		 
			On Windows, the libAMIGO library should be on the system path, e.g.:
			C:\Desktop\AMIGO2014Bench\Kernel\libAMIGO\lib_win32\vs

			How do I set my system path under Windows?
			http://www.mathworks.es/support/solutions/en/data/1-15ZLK/
			
		Step 2 
		In order to compile be sure you adapt the location of your Matlab installation.
		Two different examples:
		a) A Matlab compiler installation
			set "MATLAB_PATH="C:\Program Files (x86)\MATLAB\MATLAB Compiler Runtime\v82""
		b)A R2011b version installed under C:\MATLAB
			set "MATLAB_PATH=C:\MATLAB\R2011b"

		Step 3
		Set the location of your Matlab libraries:
			set "MATLAB_LIB=%MATLAB_PATH%\bin\win32"
			
		Step 4 
		Set the location of you AMIGO installation directory, e.g.:
			set "AMIGO_PATH=..\..\AMIGO2014bench"

		Step 5
		Run the script:
			compile_c.bat

		Step 6
		Run the binary,e.g.:
			B1



	Linux

	
		Step 1
		Make sure you have Matlab or Matlab compiler runtime installed (available at 
		http://www.mathworks.es/products/compiler/mcr/ )

		Step 2 
		Move into the the AMIGO directory:
			AMIGO2014bench

		Step3
		Execute the following steps (you can copy and paste after editing the paths):

			#This path requires edition. Introduce the location of your matlab installation.
			 export MATLAB_PATH=/usr/local/matlab

			#If you have a 32 bits matlab installation choose glnx86 otherwise choose glnxa64
			#export MATLAB_LIB=$MATLAB_PATH/bin/glnxa64
			 export MATLAB_LIB=$MATLAB_PATH/bin/glnx86

			#Change the AMIGO PATH to match the location of your AMIGO installation
			 export AMIGO_PATH=$(pwd)
			 
			Alternatively, you can modify the Makefile in order not to depend on the environment 
			variables.

		Step4 
		Execute the compile_libAMIGO.sh script to compile the libAMIGO library. Make sure
		you have execution permission:
			chmod +x compile_libAMIGO.sh
			./compile_libAMIGO.sh
			
		Step5	
		Move into the C folder of the corresponding benchmark.
			
		Step6
		Compile the the benchmark:
			make clean
			make 

		Step 7
		Execute the the binary, e.g.:
			./B1
	
	
---------------------------------------------------------------------------------------------
--------------------------------------  

BRIEF NOTE ON COMPILER VERSIONS and NUMERICAL PRECISION:

	Under Windows we have tested the C implementations with gcc-4.6.3. The library 
	libAMIGO provided for Windows 32-bits (note that it can be executed in a 64-bit OS) 
	was compiled with Visual Studio 2010.
	Under Linux we have tested the C implementations with gcc-4.3.1 (64-bits).
	
	Numerical precision of the results
	Minor differences related with numerical precision might arise depending on the the 
    compiler and the optimization flags used in the compilation. Therefore, when reporting
	numerical results it is a good practice to specify, at least, the compilers used and
	their version.


