
::To run this problem you are required to have matlab installed or the Matlab
::compiler runtime. Available at http://www.mathworks.es/products/compiler/mcr/
 
::In order to compile be sure you adapt the location of your Matlab installation.
::Two different examples:
::a) A Matlab compiler installation
::set "MATLAB_PATH="C:\Program Files (x86)\MATLAB\MATLAB Compiler Runtime\v82""
::b)A R2011b version installed under C:\MATLAB
::set "MATLAB_PATH=C:\MATLAB\R2011b"

set "MATLAB_PATH=C:\MATLAB\R2011b"


set "MATLAB_LIB=%MATLAB_PATH%\bin\win32"
set "AMIGO_PATH=..\..\AMIGO2014bench"
set "OUTFILE=B1.exe"
set "OPTFLAG=-O3"


set "INPUT=b1_fullC_template.c"
set "executeGCC=gcc -w %OPTFLAG%  %INPUT% -I%AMIGO_PATH%\Kernel\libAMIGO\include\include_amigo  -I%AMIGO_PATH%\Kernel\libAMIGO\include\include_nl2sol -I%AMIGO_PATH%\Kernel\libAMIGO\include\include_mxInterface -I%AMIGO_PATH%\Kernel\libAMIGO\include\include_cvodes -I%AMIGO_PATH%\Kernel\libAMIGO\include\include_f2c -I%AMIGO_PATH%\Kernel\libAMIGO\include\include_de -I%AMIGO_PATH%\Kernel\libAMIGO\include\include_SRES -I%MATLAB_PATH%\extern\include -L%AMIGO_PATH%\Kernel\libAMIGO\lib_win32\vs -L%MATLAB_LIB% -DIMPORT -lsharedAMIGO -lmwblas -lmwlapack -o %OUTFILE%"
%executeGCC%


